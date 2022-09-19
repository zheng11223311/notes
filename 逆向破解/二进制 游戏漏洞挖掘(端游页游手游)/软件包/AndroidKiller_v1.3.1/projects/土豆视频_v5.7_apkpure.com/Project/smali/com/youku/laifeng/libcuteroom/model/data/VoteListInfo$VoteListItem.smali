.class public Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
.super Ljava/lang/Object;
.source "VoteListInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoteListItem"
.end annotation


# instance fields
.field private id:I

.field private isExtend:Z

.field private isFree:I

.field private owner:I

.field private price:I

.field private show:Z

.field private status:I

.field private template:I

.field private title:Ljava/lang/String;

.field private totalNum:I

.field private voted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isExtend:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isExtend:Z

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->template:I

    .line 82
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->id:I

    .line 83
    const-string/jumbo v0, "totalNum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->totalNum:I

    .line 84
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->title:Ljava/lang/String;

    .line 85
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->price:I

    .line 86
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->status:I

    .line 87
    const-string v0, "isFree"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isFree:I

    .line 88
    const-string v0, "owner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->owner:I

    .line 89
    const-string/jumbo v0, "voted"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->voted:Z

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->id:I

    return v0
.end method

.method public getIsFree()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isFree:I

    return v0
.end method

.method public getOwner()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->owner:I

    return v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->price:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->status:I

    return v0
.end method

.method public getTemplate()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->template:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->totalNum:I

    return v0
.end method

.method public isExtend()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isExtend:Z

    return v0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->show:Z

    return v0
.end method

.method public isVoted()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->voted:Z

    return v0
.end method

.method public setExtend(Z)V
    .locals 0
    .param p1, "isExtend"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isExtend:Z

    .line 180
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->id:I

    .line 100
    return-void
.end method

.method public setIsFree(I)V
    .locals 0
    .param p1, "isFree"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isFree:I

    .line 140
    return-void
.end method

.method public setOwner(I)V
    .locals 0
    .param p1, "owner"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->owner:I

    .line 108
    return-void
.end method

.method public setPrice(I)V
    .locals 0
    .param p1, "price"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->price:I

    .line 148
    return-void
.end method

.method public setShow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->show:Z

    .line 172
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->status:I

    .line 156
    return-void
.end method

.method public setTemplate(I)V
    .locals 0
    .param p1, "template"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->template:I

    .line 132
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->title:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setTotalNum(I)V
    .locals 0
    .param p1, "totalNum"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->totalNum:I

    .line 116
    return-void
.end method

.method public setVoted(Z)V
    .locals 0
    .param p1, "voted"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->voted:Z

    .line 160
    return-void
.end method
