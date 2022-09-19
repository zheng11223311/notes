.class public Lcom/youku/vo/TheShowRankHistoryResults;
.super Ljava/lang/Object;
.source "TheShowRankHistoryResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;
    }
.end annotation


# instance fields
.field public error_code_api:I

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;",
            ">;"
        }
    .end annotation
.end field

.field public status_api:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/TheShowRankHistoryResults;->status_api:Ljava/lang/String;

    .line 13
    return-void
.end method
