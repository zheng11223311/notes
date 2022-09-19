.class public Lcom/youku/vo/FavouritePlaylistResult;
.super Ljava/lang/Object;
.source "FavouritePlaylistResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;

    invoke-direct {v0, p0}, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;-><init>(Lcom/youku/vo/FavouritePlaylistResult;)V

    iput-object v0, p0, Lcom/youku/vo/FavouritePlaylistResult;->data:Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;

    .line 11
    return-void
.end method
