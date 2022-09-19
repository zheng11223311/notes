.class Lcom/tudou/ui/fragment/ClassifyHomeFragment$2;
.super Ljava/lang/Object;
.source "ClassifyHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyHomeFragment;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$800(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    return-void
.end method
