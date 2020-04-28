--Задание простое и теорретически понятное - прописать в общем виде (в экселе, как вариант) струтру БД сайта vk.com:
-- 1. Отображаем основные талицы
-- 2. Учитываем, что у пользователя может быть ник, короткое имя, 
-- фотка,инфа когда он заходит, группы и сообщества, друзья черный 
-- список,сообщения, лайки, чем он делился, видеозаписи, лог его действий и т.д.




from sqlalchemy import create_engine, select
from sqlalchemy import Column, Integer, String, DateTime, ForeignKey, Boolean
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sshtunnel import SSHTunnelForwarder

server = SSHTunnelForwarder(
    ('10.10.10.32', 22),
    ssh_username="black",
    ssh_password="1",
    remote_bind_address=('127.0.0.1', 3306)
    )

server.start()
local_port = str(server.local_bind_port)
engine = create_engine('mysql+pymysql://root:1@127.0.0.1:{}/vk'.format(server.local_bind_port))

#engine = create_engine('mysql+pymysql://root:1@127.0.0.1/vk', echo=True)
Base = declarative_base()


class User(Base):
    __tablename__ = 'User'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    email = Column(String(50))
    phone = Column(Integer)
    nickname = Column(String(50))
    photo = Column(Integer, ForeignKey('Media.id', onupdate="CASCADE", ondelete="CASCADE"))
    hometown = Column(String(50))
    on_line = Column(Integer, ForeignKey('On_line.id', onupdate="CASCADE", ondelete="CASCADE"))

    def __init__(self, email, phone, nickname, photo, hometown, on_line):
        self.email = email
        self.phone = phone
        self.nickname = nickname
        self.photo = photo
        self.photo = hometown
        self.on_line = on_line


class On_line(Base):
    __tablename__ = 'On_line'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    on_line = Column(Boolean)
    time = Column(DateTime)

    def __init__(self, on_line, time):
        self.on_line = on_line
        self.time = time


class Friend(Base):
    __tablename__ = 'Friend'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    user = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))
    friend = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))

    def __init__(self, user, friend):
        self.user = user
        self.friend = friend


class Group(Base):
    __tablename__ = 'Group'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    name = Column(String(50))
    admin = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))
    member = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))
    blogpost = Column(Integer, ForeignKey('Blogpost.id', onupdate="CASCADE", ondelete="CASCADE"))

    def __init__(self, admin, member, name, blogpost):
        self.name = name
        self.admin = admin
        self.member = member
        self.blogpost = blogpost


class Blacklist(Base):
    __tablename__ = 'Blacklist'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    user = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))
    enemy = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))

    def __init__(self, user, enemy):
        self.user = user
        self.enemy = enemy


class Message(Base):
    __tablename__ = 'Message'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    user = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))
    poster = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))
    header = Column(String(50))
    text = Column(String(50))
    date = Column(DateTime)

    def __init__(self, user, poster, header, text, date):
        self.user = user
        self.poster = poster
        self.header = header
        self.text = text
        self.date = date


class Like(Base):
    __tablename__ = 'Like'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    user = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))
    obj = Column(Integer, ForeignKey('Obj.id', onupdate="CASCADE", ondelete="CASCADE"))

    def __init__(self, user, obj):
        self.user = user
        self.obj = obj


class Obj(Base):
    __tablename__ = 'Obj'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    name = Column(String(50))

    def __init__(self, name):
        self.name = name


class Blogpost(Base):
    __tablename__ = 'Blogpost'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    user = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))
    text = Column(String(50))
    date = Column(DateTime)
    like = Column(Integer, ForeignKey('Like.id', onupdate="CASCADE", ondelete="CASCADE"))
    comment = Column(Integer, ForeignKey('Comment.id', onupdate="CASCADE", ondelete="CASCADE"))

    def __init__(self, user, text, date, like, comment):
        self.user = user
        self.text = text
        self.date = date
        self.like = like
        self.comment = comment



class Media(Base):
    __tablename__ = 'Media'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    name = Column(String(50))
    user = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))
    media_type = Column(Integer, ForeignKey('Media_type.id', onupdate="CASCADE", ondelete="CASCADE"))
    date = Column(DateTime)
    like = Column(Integer, ForeignKey('Like.id', onupdate="CASCADE", ondelete="CASCADE"))
    link = Column(String(50))

    def __init__(self, name, user, media_type, date, like, link):
        self.name = name
        self.user = user
        self.media_type = media_type
        self.date = date
        self.like = like
        self.link = link


class Media_type(Base):
    __tablename__ = 'Media_type'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    type = Column(String(50))

    def __init__(self, type):
        self.type = type


class Comment(Base):
    __tablename__ = 'Comment'
    id = Column(Integer, primary_key=True, autoincrement=True, unique=True)
    blogpost = Column(Integer, ForeignKey('Blogpost.id', onupdate="CASCADE", ondelete="CASCADE"))
    user = Column(Integer, ForeignKey('User.id', onupdate="CASCADE", ondelete="CASCADE"))
    text = Column(String(50))
    date = Column(DateTime)
    like = Column(Integer, ForeignKey('Like.id', onupdate="CASCADE", ondelete="CASCADE"))

    def __init__(self, blogpost, user, text, date, like):
        self.blogpost = blogpost
        self.user = user
        self.text = text
        self.date = date
        self.like = like


def creator():
    Base.metadata.create_all(engine)


def addition(engine):
    Session = sessionmaker(bind=engine)
    session = Session()

    session.add_all(Obj(i) for i in ['Blogpost', 'Media'])
    session.add_all(Media_type(i) for i in ['Photo', 'Video', 'Music'])

    session.commit()
    session.close()


def printer(engine):
    Session = sessionmaker(bind=engine)
    session = Session()

    print(session.execute(select('*').select_from(Obj)).fetchall())
    print(session.execute(select('*').select_from(Media_type)).fetchall())

    session.close()


creator()
addition(engine)
printer(engine)
server.stop()
