.class Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
.super Ljava/lang/Object;
.source "IOMessage.java"


# static fields
.field public static final FIELD_DATA:I = 0x3

.field public static final FIELD_ENDPOINT:I = 0x2

.field public static final FIELD_ID:I = 0x1

.field public static final FIELD_TYPE:I = 0x0

.field public static final NUM_FIELDS:I = 0x4

.field public static final TYPE_ACK:I = 0x6

.field public static final TYPE_CONNECT:I = 0x1

.field public static final TYPE_DISCONNECT:I = 0x0

.field public static final TYPE_ERROR:I = 0x7

.field public static final TYPE_EVENT:I = 0x5

.field public static final TYPE_HEARTBEAT:I = 0x2

.field public static final TYPE_JSON_MESSAGE:I = 0x4

.field public static final TYPE_MESSAGE:I = 0x3

.field public static final TYPE_NOOP:I = 0x8


# instance fields
.field private final fields:[Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    .line 78
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->type:I

    .line 79
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 80
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 82
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-array v2, v3, [Ljava/lang/String;

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    .line 107
    const-string v2, ":"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "fields":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    aget-object v3, v0, v1

    aput-object v3, v2, v1

    .line 110
    if-nez v1, :cond_0

    .line 111
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->type:I

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->type:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 122
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->fields:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
