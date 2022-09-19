.class public Lcom/youku/vo/FavouriteVideoResult;
.super Ljava/lang/Object;
.source "FavouriteVideoResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;
    }
.end annotation


# instance fields
.field public data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    invoke-direct {v0, p0}, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;-><init>(Lcom/youku/vo/FavouriteVideoResult;)V

    iput-object v0, p0, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    .line 15
    return-void
.end method
