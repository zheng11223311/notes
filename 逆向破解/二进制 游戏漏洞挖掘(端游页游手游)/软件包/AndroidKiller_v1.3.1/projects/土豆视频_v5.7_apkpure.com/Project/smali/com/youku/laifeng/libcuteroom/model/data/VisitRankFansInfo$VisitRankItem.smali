.class public Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;
.super Ljava/lang/Object;
.source "VisitRankFansInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisitRankItem"
.end annotation


# instance fields
.field private anchorLevel:I

.field private coverUrl:Ljava/lang/String;

.field private isShowing:Z

.field private isTitle:Z

.field private link:Ljava/lang/String;

.field private nextShow:J

.field private nickName:Ljava/lang/String;

.field private num:I

.field public position:I

.field private showingTime:J

.field private tag:Ljava/lang/String;

.field private theme:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;

.field private timestamp:J

.field private userId:I


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;
    .param p2, "position"    # I

    .prologue
    .line 127
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->this$0:Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->isTitle:Z

    .line 128
    iput p2, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->position:I

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;
    .param p2, "head"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;
    .param p4, "position"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 131
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->this$0:Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->isTitle:Z

    .line 132
    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->userId:I

    .line 133
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->nickName:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->theme:Ljava/lang/String;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->isTitle:Z

    .line 136
    iput p4, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->position:I

    .line 137
    iput-object p5, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->tag:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public getAnchorLevel()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->anchorLevel:I

    return v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getNextShow()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->nextShow:J

    return-wide v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->num:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->position:I

    return v0
.end method

.method public getShowingTime()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->showingTime:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->timestamp:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->userId:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->isShowing:Z

    return v0
.end method

.method public isTitle()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->isTitle:Z

    return v0
.end method

.method public setAnchorLevel(I)V
    .locals 0
    .param p1, "anchorLevel"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->anchorLevel:I

    .line 178
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrl"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->coverUrl:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->link:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setNextShow(J)V
    .locals 1
    .param p1, "nextShow"    # J

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->nextShow:J

    .line 202
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->nickName:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->num:I

    .line 226
    return-void
.end method

.method public setShowing(Z)V
    .locals 0
    .param p1, "isShowing"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->isShowing:Z

    .line 210
    return-void
.end method

.method public setShowingTime(J)V
    .locals 1
    .param p1, "showingTime"    # J

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->showingTime:J

    .line 194
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->tag:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->theme:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->timestamp:J

    .line 122
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->userId:I

    .line 162
    return-void
.end method
