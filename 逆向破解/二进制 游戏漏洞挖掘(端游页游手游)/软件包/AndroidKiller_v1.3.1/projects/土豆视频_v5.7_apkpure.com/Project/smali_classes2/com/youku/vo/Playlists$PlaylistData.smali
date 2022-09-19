.class public Lcom/youku/vo/Playlists$PlaylistData;
.super Ljava/lang/Object;
.source "Playlists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Playlists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaylistData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/Playlists$PlaylistData$ListData;
    }
.end annotation


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Playlists$PlaylistData$ListData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/vo/Playlists;

.field public totalPlaylistCount:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/Playlists;)V
    .locals 1

    .prologue
    .line 9
    iput-object p1, p0, Lcom/youku/vo/Playlists$PlaylistData;->this$0:Lcom/youku/vo/Playlists;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/Playlists$PlaylistData;->totalPlaylistCount:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/Playlists$PlaylistData;->list:Ljava/util/ArrayList;

    .line 12
    return-void
.end method
