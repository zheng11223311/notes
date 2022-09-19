.class Lcom/tudou/ui/fragment/MessageFragment$6;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MessageFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageFragment;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageFragment$6;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$6;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageFragment;->viewPager:Lcom/youku/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setCurrentItem(I)V

    .line 213
    return-void
.end method
