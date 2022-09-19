.class public Lcom/youku/vo/RecommendVideoResults$RVReqInfo;
.super Ljava/lang/Object;
.source "RecommendVideoResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/RecommendVideoResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RVReqInfo"
.end annotation


# instance fields
.field public abver:Ljava/lang/String;

.field public apt:Ljava/lang/String;

.field public juid:Ljava/lang/String;

.field public md:Ljava/lang/String;

.field public ord:Ljava/lang/String;

.field public pg:Ljava/lang/String;

.field public req_id:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/RecommendVideoResults;

.field public userid:Ljava/lang/String;

.field public yjuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/RecommendVideoResults;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/youku/vo/RecommendVideoResults$RVReqInfo;->this$0:Lcom/youku/vo/RecommendVideoResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
