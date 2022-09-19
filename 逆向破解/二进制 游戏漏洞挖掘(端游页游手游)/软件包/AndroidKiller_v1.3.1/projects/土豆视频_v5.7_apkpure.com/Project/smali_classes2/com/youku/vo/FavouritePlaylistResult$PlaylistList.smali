.class public Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;
.super Ljava/lang/Object;
.source "FavouritePlaylistResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/FavouritePlaylistResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaylistList"
.end annotation


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouritePlaylist;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/vo/FavouritePlaylistResult;

.field public totalPlaylistCount:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/FavouritePlaylistResult;)V
    .locals 1

    .prologue
    .line 11
    iput-object p1, p0, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;->this$0:Lcom/youku/vo/FavouritePlaylistResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;->list:Ljava/util/ArrayList;

    return-void
.end method
