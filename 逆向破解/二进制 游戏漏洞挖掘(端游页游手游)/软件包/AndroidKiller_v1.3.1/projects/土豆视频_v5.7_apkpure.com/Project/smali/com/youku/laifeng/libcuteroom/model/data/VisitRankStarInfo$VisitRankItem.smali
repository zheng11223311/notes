.class public Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;
.super Ljava/lang/Object;
.source "VisitRankStarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo;
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

.field public position:I

.field private showingTime:J

.field private tag:Ljava/lang/String;

.field private theme:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo;

.field private timestamp:J

.field private userId:I


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo;
    .param p2, "position"    # I

    .prologue
    .line 123
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->this$0:Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->isTitle:Z

    .line 124
    iput p2, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->position:I

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo;
    .param p2, "head"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;
    .param p4, "position"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 127
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->this$0:Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->isTitle:Z

    .line 128
    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->userId:I

    .line 129
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->nickName:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->theme:Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->isTitle:Z

    .line 132
    iput p4, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->position:I

    .line 133
    iput-object p5, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->tag:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public getAnchorLevel()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->anchorLevel:I

    return v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getNextShow()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->nextShow:J

    return-wide v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->position:I

    return v0
.end method

.method public getShowingTime()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->showingTime:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->timestamp:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->userId:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->isShowing:Z

    return v0
.end method

.method public isTitle()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->isTitle:Z

    return v0
.end method

.method public setAnchorLevel(I)V
    .locals 0
    .param p1, "anchorLevel"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->anchorLevel:I

    .line 174
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrl"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->coverUrl:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->link:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setNextShow(J)V
    .locals 1
    .param p1, "nextShow"    # J

    .prologue
    .line 197
    iput-wide p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->nextShow:J

    .line 198
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->nickName:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setShowing(Z)V
    .locals 0
    .param p1, "isShowing"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->isShowing:Z

    .line 206
    return-void
.end method

.method public setShowingTime(J)V
    .locals 1
    .param p1, "showingTime"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->showingTime:J

    .line 190
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->tag:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->theme:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->timestamp:J

    .line 118
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankStarInfo$VisitRankItem;->userId:I

    .line 158
    return-void
.end method
