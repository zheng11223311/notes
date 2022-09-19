.class Lcom/tudou/ui/fragment/DanmuPreviewFragment$2;
.super Ljava/lang/Object;
.source "DanmuPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/DanmuPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$2;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$2;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$500(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 170
    return-void
.end method
