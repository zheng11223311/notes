.class Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BSideGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/BSideGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private btn:Landroid/widget/Button;

.field private btnRel:Landroid/widget/RelativeLayout;

.field private img:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/youku/adapter/BSideGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/BSideGridViewAdapter;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->btn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->btnRel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/youku/adapter/BSideGridViewAdapter$ViewHolder;->btnRel:Landroid/widget/RelativeLayout;

    return-object p1
.end method
