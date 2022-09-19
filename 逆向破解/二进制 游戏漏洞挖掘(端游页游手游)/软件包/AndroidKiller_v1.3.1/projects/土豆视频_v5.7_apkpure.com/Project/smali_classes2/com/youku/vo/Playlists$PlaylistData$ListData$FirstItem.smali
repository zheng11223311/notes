.class public Lcom/youku/vo/Playlists$PlaylistData$ListData$FirstItem;
.super Ljava/lang/Object;
.source "Playlists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Playlists$PlaylistData$ListData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FirstItem"
.end annotation


# instance fields
.field public icode:Ljava/lang/String;

.field public itemId:Ljava/lang/String;

.field final synthetic this$2:Lcom/youku/vo/Playlists$PlaylistData$ListData;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Playlists$PlaylistData$ListData;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/youku/vo/Playlists$PlaylistData$ListData$FirstItem;->this$2:Lcom/youku/vo/Playlists$PlaylistData$ListData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
