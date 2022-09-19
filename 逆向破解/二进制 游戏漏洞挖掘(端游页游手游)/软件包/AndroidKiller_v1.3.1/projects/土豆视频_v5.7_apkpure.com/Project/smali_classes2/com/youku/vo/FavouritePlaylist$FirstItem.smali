.class public Lcom/youku/vo/FavouritePlaylist$FirstItem;
.super Ljava/lang/Object;
.source "FavouritePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/FavouritePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FirstItem"
.end annotation


# instance fields
.field public icode:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/FavouritePlaylist;

.field public title:Ljava/lang/String;

.field public title_new:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/FavouritePlaylist;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/youku/vo/FavouritePlaylist$FirstItem;->this$0:Lcom/youku/vo/FavouritePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
