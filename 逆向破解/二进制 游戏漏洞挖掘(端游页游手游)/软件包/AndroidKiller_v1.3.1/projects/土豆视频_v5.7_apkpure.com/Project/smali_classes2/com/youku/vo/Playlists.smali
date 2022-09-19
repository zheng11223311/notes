.class public Lcom/youku/vo/Playlists;
.super Ljava/lang/Object;
.source "Playlists.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/Playlists$PlaylistData;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/youku/vo/Playlists$PlaylistData;

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/youku/vo/Playlists$PlaylistData;

    invoke-direct {v0, p0}, Lcom/youku/vo/Playlists$PlaylistData;-><init>(Lcom/youku/vo/Playlists;)V

    iput-object v0, p0, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    .line 9
    return-void
.end method
