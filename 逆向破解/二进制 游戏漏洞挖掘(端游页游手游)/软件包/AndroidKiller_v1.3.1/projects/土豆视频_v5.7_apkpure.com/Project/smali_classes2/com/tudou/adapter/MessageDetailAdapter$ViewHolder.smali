.class Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MessageDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/MessageDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public msgHeaderLeft:Landroid/widget/ImageView;

.field public msgHeaderRight:Landroid/widget/ImageView;

.field public msgItemContentLeft:Landroid/widget/TextView;

.field public msgItemContentRight:Landroid/widget/TextView;

.field public msgItemTimeLeft:Landroid/widget/TextView;

.field public msgItemTimeRight:Landroid/widget/TextView;

.field public msgLeft:Landroid/widget/RelativeLayout;

.field public msgRight:Landroid/widget/RelativeLayout;

.field public msgStateLeft:Landroid/widget/ImageView;

.field public msgStateRight:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tudou/adapter/MessageDetailAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/MessageDetailAdapter;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/MessageDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
