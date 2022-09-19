.class public Lcom/youku/vo/TheShowRankResults;
.super Ljava/lang/Object;
.source "TheShowRankResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/TheShowRankResults$TheShowRankResult;
    }
.end annotation


# instance fields
.field public endTime:Ljava/lang/String;

.field public error:I

.field public msg:Ljava/lang/String;

.field public resttime:I

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TheShowRankResults$TheShowRankResult;",
            ">;"
        }
    .end annotation
.end field

.field public roomId:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field public wno:I

.field public xc_picUrl:Ljava/lang/String;

.field public year:Ljava/lang/String;

.field public zb_picUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/TheShowRankResults;->msg:Ljava/lang/String;

    .line 21
    return-void
.end method
