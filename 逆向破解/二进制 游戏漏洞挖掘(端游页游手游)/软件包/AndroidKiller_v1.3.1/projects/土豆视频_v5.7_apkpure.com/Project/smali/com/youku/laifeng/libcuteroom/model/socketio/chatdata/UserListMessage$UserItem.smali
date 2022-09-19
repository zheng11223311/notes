.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
.super Ljava/lang/Object;
.source "UserListMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserItem"
.end annotation


# static fields
.field private static final DATA_ALIVETM:Ljava/lang/String; = "alivetm"

.field private static final DATA_ANCHOR_LEVEL:Ljava/lang/String; = "anchorLevel"

.field private static final DATA_AUTHORITY:Ljava/lang/String; = "authority"

.field private static final DATA_AVTAR_URL:Ljava/lang/String; = "avtarURL"

.field private static final DATA_CITY:Ljava/lang/String; = "zip"

.field private static final DATA_DEFAULT_END_POINT_TYPE:Ljava/lang/String; = "defaultEndpointType"

.field private static final DATA_ENTER_ROOM_TIME:Ljava/lang/String; = "enterRoomTime"

.field private static final DATA_EXPERIENCE:Ljava/lang/String; = "experience"

.field private static final DATA_GENDER:Ljava/lang/String; = "gender"

.field private static final DATA_LEVEL:Ljava/lang/String; = "level"

.field private static final DATA_MUTED:Ljava/lang/String; = "muted"

.field private static final DATA_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final DATA_ORID:Ljava/lang/String; = "orid"

.field private static final DATA_UID:Ljava/lang/String; = "uid"


# instance fields
.field private alivetm:Ljava/lang/String;

.field private anchorLevel:Ljava/lang/String;

.field private authority:Ljava/lang/String;

.field private avtarURL:Ljava/lang/String;

.field private city:I

.field private defaultEndpointType:Ljava/lang/String;

.field private enterRoomTime:Ljava/lang/String;

.field private experience:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private muted:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private orid:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;)V
    .locals 2
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

    .prologue
    const/4 v1, 0x0

    .line 204
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->uid:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->city:I

    .line 135
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->authority:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->orid:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->alivetm:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->level:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->anchorLevel:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->avtarURL:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->nickname:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->muted:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->defaultEndpointType:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->gender:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->experience:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->enterRoomTime:Ljava/lang/String;

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->uid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->defaultEndpointType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->city:I

    return p1
.end method

.method static synthetic access$1102(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->gender:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->experience:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->enterRoomTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->authority:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->orid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->alivetm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->level:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->anchorLevel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->avtarURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->nickname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->muted:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAlivetm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->alivetm:Ljava/lang/String;

    return-object v0
.end method

.method public getAnchorLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->anchorLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getAvtarURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->avtarURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->city:I

    return v0
.end method

.method public getDefaultEndpointType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->defaultEndpointType:Ljava/lang/String;

    return-object v0
.end method

.method public getEnterRoomTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->enterRoomTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExperience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->experience:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getMuted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->muted:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOrid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->orid:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->uid:Ljava/lang/String;

    return-object v0
.end method
