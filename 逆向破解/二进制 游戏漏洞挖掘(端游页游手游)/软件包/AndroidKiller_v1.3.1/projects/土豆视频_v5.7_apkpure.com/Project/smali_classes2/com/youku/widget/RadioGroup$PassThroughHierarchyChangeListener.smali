.class Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/youku/widget/RadioGroup;


# direct methods
.method private constructor <init>(Lcom/youku/widget/RadioGroup;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/youku/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/widget/RadioGroup;Lcom/youku/widget/RadioGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/widget/RadioGroup;
    .param p2, "x1"    # Lcom/youku/widget/RadioGroup$1;

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/youku/widget/RadioGroup;)V

    return-void
.end method

.method static synthetic access$202(Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;
    .param p1, "x1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 406
    iget-object v1, p0, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/youku/widget/RadioGroup;

    if-ne p1, v1, :cond_1

    instance-of v1, p2, Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 409
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 410
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 411
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v1, p2

    .line 413
    check-cast v1, Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/youku/widget/RadioGroup;

    invoke-static {v2}, Lcom/youku/widget/RadioGroup;->access$900(Lcom/youku/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 417
    .end local v0    # "id":I
    :cond_1
    iget-object v1, p0, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_2

    .line 418
    iget-object v1, p0, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 420
    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/youku/widget/RadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 427
    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 433
    :cond_1
    return-void
.end method
