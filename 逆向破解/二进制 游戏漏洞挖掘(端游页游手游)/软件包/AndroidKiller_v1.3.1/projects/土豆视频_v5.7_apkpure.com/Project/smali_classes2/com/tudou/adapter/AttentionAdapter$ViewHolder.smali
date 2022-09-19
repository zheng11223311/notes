.class Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AttentionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/AttentionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field arrow:Landroid/widget/ImageView;

.field delete:Landroid/widget/ImageView;

.field desc:Landroid/widget/TextView;

.field id:I

.field imageView:Landroid/widget/ImageView;

.field imageView_2:Landroid/widget/ImageView;

.field juji_img:Landroid/widget/ImageView;

.field num:Landroid/widget/TextView;

.field num_bg:Landroid/widget/ImageView;

.field progressBar:Landroid/widget/ProgressBar;

.field score:Landroid/widget/TextView;

.field sum:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/adapter/AttentionAdapter;

.field username:Landroid/widget/TextView;

.field vuserimg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/AttentionAdapter;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
