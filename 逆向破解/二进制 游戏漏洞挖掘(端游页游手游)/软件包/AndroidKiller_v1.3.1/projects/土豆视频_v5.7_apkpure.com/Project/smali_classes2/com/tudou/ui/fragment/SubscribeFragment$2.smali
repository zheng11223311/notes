.class Lcom/tudou/ui/fragment/SubscribeFragment$2;
.super Ljava/lang/Object;
.source "SubscribeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SubscribeFragment;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SubscribeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SubscribeFragment;->initData()V

    .line 236
    return-void
.end method
