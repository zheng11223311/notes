.class Lcom/youku/widget/AccountHeadView$2;
.super Ljava/lang/Object;
.source "AccountHeadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/AccountHeadView;->refreshLoginLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/AccountHeadView;


# direct methods
.method constructor <init>(Lcom/youku/widget/AccountHeadView;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/youku/widget/AccountHeadView$2;->this$0:Lcom/youku/widget/AccountHeadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/youku/widget/AccountHeadView$2;->this$0:Lcom/youku/widget/AccountHeadView;

    invoke-static {v0}, Lcom/youku/widget/AccountHeadView;->access$200(Lcom/youku/widget/AccountHeadView;)V

    .line 293
    return-void
.end method
