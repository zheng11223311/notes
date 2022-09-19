.class Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$4;
.super Ljava/lang/Object;
.source "ClassifyFeatureInfoFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->initHeaderViewGallery(Lcom/youku/vo/TopSlideArea;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

.field final synthetic val$dataSize:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;I)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    iput p2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$4;->val$dataSize:I

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
    .line 248
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$4;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    iget v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$4;->val$dataSize:I

    invoke-static {v0, v1, p3}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$800(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;II)V

    .line 249
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
    .line 253
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
