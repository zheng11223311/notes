.class public Lcom/youtu/apps/recommend/vo/AllNewRecommend;
.super Ljava/lang/Object;
.source "AllNewRecommend.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5efbef27606a9001L


# instance fields
.field public results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youtu/apps/recommend/vo/NewRecommend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/AllNewRecommend;->results:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/AllNewRecommend;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youtu/apps/recommend/vo/AllNewRecommend;->results:Ljava/util/List;

    .line 17
    :cond_0
    return-void
.end method
