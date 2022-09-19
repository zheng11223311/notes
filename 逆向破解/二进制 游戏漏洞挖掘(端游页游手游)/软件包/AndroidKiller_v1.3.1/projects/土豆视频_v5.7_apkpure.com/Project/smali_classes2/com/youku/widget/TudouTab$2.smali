.class final Lcom/youku/widget/TudouTab$2;
.super Ljava/lang/Object;
.source "TudouTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/TudouTab;->registerDoubleClickListener(Landroid/view/View;Lcom/youku/widget/TudouTab$OnDoubleClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final DOUBLE_CLICK_TIME:I = 0x15e


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/youku/widget/TudouTab$OnDoubleClickListener;

.field private waitDouble:Z


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouTab$OnDoubleClickListener;)V
    .locals 1

    .prologue
    .line 622
    iput-object p1, p0, Lcom/youku/widget/TudouTab$2;->val$listener:Lcom/youku/widget/TudouTab$OnDoubleClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/TudouTab$2;->waitDouble:Z

    .line 626
    new-instance v0, Lcom/youku/widget/TudouTab$2$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouTab$2$1;-><init>(Lcom/youku/widget/TudouTab$2;)V

    iput-object v0, p0, Lcom/youku/widget/TudouTab$2;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Lcom/youku/widget/TudouTab$2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouTab$2;

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/youku/widget/TudouTab$2;->waitDouble:Z

    return v0
.end method

.method static synthetic access$202(Lcom/youku/widget/TudouTab$2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/TudouTab$2;
    .param p1, "x1"    # Z

    .prologue
    .line 622
    iput-boolean p1, p0, Lcom/youku/widget/TudouTab$2;->waitDouble:Z

    return p1
.end method

.method static synthetic access$300(Lcom/youku/widget/TudouTab$2;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouTab$2;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/youku/widget/TudouTab$2;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/youku/widget/TudouTab$2;->waitDouble:Z

    if-eqz v0, :cond_0

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/TudouTab$2;->waitDouble:Z

    .line 638
    new-instance v0, Lcom/youku/widget/TudouTab$2$2;

    invoke-direct {v0, p0, p1}, Lcom/youku/widget/TudouTab$2$2;-><init>(Lcom/youku/widget/TudouTab$2;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/youku/widget/TudouTab$2$2;->start()V

    .line 661
    :goto_0
    return-void

    .line 658
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/TudouTab$2;->waitDouble:Z

    .line 659
    iget-object v0, p0, Lcom/youku/widget/TudouTab$2;->val$listener:Lcom/youku/widget/TudouTab$OnDoubleClickListener;

    invoke-interface {v0, p1}, Lcom/youku/widget/TudouTab$OnDoubleClickListener;->OnDoubleClick(Landroid/view/View;)V

    goto :goto_0
.end method
