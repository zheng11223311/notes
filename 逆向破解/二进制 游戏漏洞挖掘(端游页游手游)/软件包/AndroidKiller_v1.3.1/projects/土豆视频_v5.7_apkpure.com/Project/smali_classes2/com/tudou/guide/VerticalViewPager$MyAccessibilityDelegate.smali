.class Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/guide/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/guide/VerticalViewPager;


# direct methods
.method constructor <init>(Lcom/tudou/guide/VerticalViewPager;)V
    .locals 0

    .prologue
    .line 2701
    iput-object p1, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2705
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2706
    const-class v0, Lcom/tudou/guide/VerticalViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2707
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v0, 0x1

    .line 2711
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2712
    const-class v1, Lcom/tudou/guide/VerticalViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2713
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v1}, Lcom/tudou/guide/VerticalViewPager;->access$200(Lcom/tudou/guide/VerticalViewPager;)Lcom/tudou/guide/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v1}, Lcom/tudou/guide/VerticalViewPager;->access$200(Lcom/tudou/guide/VerticalViewPager;)Lcom/tudou/guide/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2714
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v0}, Lcom/tudou/guide/VerticalViewPager;->access$200(Lcom/tudou/guide/VerticalViewPager;)Lcom/tudou/guide/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v0}, Lcom/tudou/guide/VerticalViewPager;->access$300(Lcom/tudou/guide/VerticalViewPager;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v0}, Lcom/tudou/guide/VerticalViewPager;->access$300(Lcom/tudou/guide/VerticalViewPager;)I

    move-result v0

    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v1}, Lcom/tudou/guide/VerticalViewPager;->access$200(Lcom/tudou/guide/VerticalViewPager;)Lcom/tudou/guide/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2715
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2717
    :cond_0
    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v0}, Lcom/tudou/guide/VerticalViewPager;->access$200(Lcom/tudou/guide/VerticalViewPager;)Lcom/tudou/guide/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v0}, Lcom/tudou/guide/VerticalViewPager;->access$300(Lcom/tudou/guide/VerticalViewPager;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v0}, Lcom/tudou/guide/VerticalViewPager;->access$300(Lcom/tudou/guide/VerticalViewPager;)I

    move-result v0

    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v1}, Lcom/tudou/guide/VerticalViewPager;->access$200(Lcom/tudou/guide/VerticalViewPager;)Lcom/tudou/guide/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2718
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2720
    :cond_1
    return-void

    .line 2713
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2724
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2741
    :goto_0
    return v0

    .line 2727
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2741
    goto :goto_0

    .line 2729
    :sswitch_0
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v2}, Lcom/tudou/guide/VerticalViewPager;->access$200(Lcom/tudou/guide/VerticalViewPager;)Lcom/tudou/guide/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v2}, Lcom/tudou/guide/VerticalViewPager;->access$300(Lcom/tudou/guide/VerticalViewPager;)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v2}, Lcom/tudou/guide/VerticalViewPager;->access$300(Lcom/tudou/guide/VerticalViewPager;)I

    move-result v2

    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v3}, Lcom/tudou/guide/VerticalViewPager;->access$200(Lcom/tudou/guide/VerticalViewPager;)Lcom/tudou/guide/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2730
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v2}, Lcom/tudou/guide/VerticalViewPager;->access$300(Lcom/tudou/guide/VerticalViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2733
    goto :goto_0

    .line 2735
    :sswitch_1
    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v2}, Lcom/tudou/guide/VerticalViewPager;->access$200(Lcom/tudou/guide/VerticalViewPager;)Lcom/tudou/guide/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v2}, Lcom/tudou/guide/VerticalViewPager;->access$300(Lcom/tudou/guide/VerticalViewPager;)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v2}, Lcom/tudou/guide/VerticalViewPager;->access$300(Lcom/tudou/guide/VerticalViewPager;)I

    move-result v2

    iget-object v3, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v3}, Lcom/tudou/guide/VerticalViewPager;->access$200(Lcom/tudou/guide/VerticalViewPager;)Lcom/tudou/guide/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/guide/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2736
    iget-object v1, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    iget-object v2, p0, Lcom/tudou/guide/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/tudou/guide/VerticalViewPager;

    invoke-static {v2}, Lcom/tudou/guide/VerticalViewPager;->access$300(Lcom/tudou/guide/VerticalViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/tudou/guide/VerticalViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2739
    goto :goto_0

    .line 2727
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
