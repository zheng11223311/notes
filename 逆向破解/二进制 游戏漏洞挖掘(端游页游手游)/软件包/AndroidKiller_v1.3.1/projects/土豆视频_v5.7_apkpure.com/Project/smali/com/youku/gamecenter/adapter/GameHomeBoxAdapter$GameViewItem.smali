.class Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameViewItem;
.super Ljava/lang/Object;
.source "GameHomeBoxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GameViewItem"
.end annotation


# instance fields
.field public action:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

.field public icon:Landroid/widget/ImageView;

.field public item_layout:Landroid/view/View;

.field public present:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;

.field public type_size:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
