.class Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BSideListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/BSideListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private btn:Landroid/widget/Button;

.field final synthetic this$0:Lcom/youku/adapter/BSideListViewAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/BSideListViewAdapter;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->this$0:Lcom/youku/adapter/BSideListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/youku/adapter/BSideListViewAdapter$ViewHolder;->btn:Landroid/widget/Button;

    return-object p1
.end method
