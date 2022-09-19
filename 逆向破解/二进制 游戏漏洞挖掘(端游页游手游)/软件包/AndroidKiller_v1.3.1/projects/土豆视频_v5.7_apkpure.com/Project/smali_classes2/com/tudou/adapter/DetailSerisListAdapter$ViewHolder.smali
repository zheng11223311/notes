.class Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DetailSerisListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/DetailSerisListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field desc:Landroid/widget/TextView;

.field isplay:Landroid/widget/ImageView;

.field isread:Landroid/widget/ImageView;

.field playtimes:Landroid/widget/TextView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/adapter/DetailSerisListAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/DetailSerisListAdapter;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/tudou/adapter/DetailSerisListAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/DetailSerisListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
