.class Lcom/tudou/ui/fragment/UploadFragment$5;
.super Ljava/lang/Object;
.source "UploadFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadFragment;->ajustSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadFragment;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFragment;->access$500(Lcom/tudou/ui/fragment/UploadFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/UploadFragment;->access$402(Lcom/tudou/ui/fragment/UploadFragment;I)I

    .line 402
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment$5;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v0, p3}, Lcom/tudou/ui/fragment/UploadFragment;->access$600(Lcom/tudou/ui/fragment/UploadFragment;I)V

    .line 403
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
