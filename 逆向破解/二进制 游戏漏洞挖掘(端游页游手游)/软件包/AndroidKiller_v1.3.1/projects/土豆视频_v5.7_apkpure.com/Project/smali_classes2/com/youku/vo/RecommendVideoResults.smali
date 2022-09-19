.class public Lcom/youku/vo/RecommendVideoResults;
.super Ljava/lang/Object;
.source "RecommendVideoResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/RecommendVideoResults$RVReqInfo;
    }
.end annotation


# instance fields
.field public recommendItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RecommendVideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public reqInfo:Lcom/youku/vo/RecommendVideoResults$RVReqInfo;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method
