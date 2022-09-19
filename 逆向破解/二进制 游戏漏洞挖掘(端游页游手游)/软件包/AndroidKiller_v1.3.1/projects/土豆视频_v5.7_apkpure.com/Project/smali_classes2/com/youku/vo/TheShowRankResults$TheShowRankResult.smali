.class public Lcom/youku/vo/TheShowRankResults$TheShowRankResult;
.super Ljava/lang/Object;
.source "TheShowRankResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/TheShowRankResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TheShowRankResult"
.end annotation


# instance fields
.field public changeFlag:I

.field public description:Ljava/lang/String;

.field public formatChange:Ljava/lang/String;

.field public formatTopRank:Ljava/lang/String;

.field public itemCode:Ljava/lang/String;

.field public itemId:I

.field public nickName:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public playTime:I

.field public playTimeRank:I

.field public playUrl:Ljava/lang/String;

.field public selfChannel:Ljava/lang/String;

.field public status:I

.field public subedCount:I

.field final synthetic this$0:Lcom/youku/vo/TheShowRankResults;

.field public title:Ljava/lang/String;

.field public type:I

.field public userId:I

.field public userPic:Ljava/lang/String;

.field public vote:I

.field public voteRank:I

.field public xc_mv_picUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/TheShowRankResults;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->this$0:Lcom/youku/vo/TheShowRankResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
