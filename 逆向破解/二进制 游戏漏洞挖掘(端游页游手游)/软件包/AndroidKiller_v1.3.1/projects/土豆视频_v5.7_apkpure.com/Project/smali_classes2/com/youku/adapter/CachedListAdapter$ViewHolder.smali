.class Lcom/youku/adapter/CachedListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CachedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/CachedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public cacheImageAlbum:Landroid/widget/ImageView;

.field public cacheNew:Landroid/widget/ImageView;

.field public cacheSize:Landroid/widget/TextView;

.field public cacheStatusImgLine:Landroid/widget/LinearLayout;

.field public deIcon:Landroid/widget/TextView;

.field public progress:Landroid/widget/TextView;

.field public statusImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/youku/adapter/CachedListAdapter;

.field public thumbnail:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;

.field public total:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/youku/adapter/CachedListAdapter;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/youku/adapter/CachedListAdapter$ViewHolder;->this$0:Lcom/youku/adapter/CachedListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
