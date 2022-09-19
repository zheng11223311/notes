.class public Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;
.super Ljava/lang/Object;
.source "TheShowRankHistoryResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/TheShowRankHistoryResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TheShowRankHistoryResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;
    }
.end annotation


# instance fields
.field public endTime:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/TheShowRankHistoryResults;

.field public top1:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;

.field public wno:I

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/TheShowRankHistoryResults;)V
    .locals 1

    .prologue
    .line 13
    iput-object p1, p0, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->this$0:Lcom/youku/vo/TheShowRankHistoryResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;

    invoke-direct {v0, p0}, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;-><init>(Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;)V

    iput-object v0, p0, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->top1:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;

    .line 21
    return-void
.end method
