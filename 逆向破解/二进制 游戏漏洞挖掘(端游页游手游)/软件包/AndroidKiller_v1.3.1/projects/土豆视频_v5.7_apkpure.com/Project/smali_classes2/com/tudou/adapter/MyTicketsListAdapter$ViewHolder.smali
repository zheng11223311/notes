.class public Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MyTicketsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/MyTicketsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mLayoutType:Landroid/view/View;

.field private mTicketsDate:Landroid/widget/TextView;

.field private mTicketsNum:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/adapter/MyTicketsListAdapter;


# direct methods
.method public constructor <init>(Lcom/tudou/adapter/MyTicketsListAdapter;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->this$0:Lcom/tudou/adapter/MyTicketsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->mTicketsNum:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->mTicketsDate:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$202(Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->mLayoutType:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public setTicketsDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->mTicketsDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method public setTicketsNum(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->mTicketsNum:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public setTypeIcon(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->mLayoutType:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    return-void
.end method
