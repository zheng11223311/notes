.class Lcom/tudou/adapter/FavouritePlaylistAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FavouritePlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/FavouritePlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field deleteIcon:Landroid/widget/ImageView;

.field itemPoster:Landroid/widget/ImageView;

.field playTimes:Landroid/widget/TextView;

.field playedItemTitle:Landroid/widget/TextView;

.field time:Landroid/widget/TextView;

.field updates:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
