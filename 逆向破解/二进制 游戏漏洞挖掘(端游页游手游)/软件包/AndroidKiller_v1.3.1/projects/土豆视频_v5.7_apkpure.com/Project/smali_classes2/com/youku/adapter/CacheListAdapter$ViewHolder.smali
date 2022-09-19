.class Lcom/youku/adapter/CacheListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/CacheListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public cacheDriver:Landroid/view/View;

.field public cacheImageFile:Landroid/widget/ImageView;

.field public cacheNew:Landroid/widget/ImageView;

.field public cacheOutDriver:Landroid/view/View;

.field public cacheShaddow:Landroid/view/View;

.field public cacheSize:Landroid/widget/TextView;

.field public cachingSubTitle:Landroid/widget/TextView;

.field public deIcon:Landroid/widget/TextView;

.field public progress:Landroid/widget/TextView;

.field public statusImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/youku/adapter/CacheListAdapter;

.field public thumbnail:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;

.field public total:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/youku/adapter/CacheListAdapter;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->this$0:Lcom/youku/adapter/CacheListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
