.class public Lcom/youku/widget/RadioGroup;
.super Landroid/widget/LinearLayout;
.source "RadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;,
        Lcom/youku/widget/RadioGroup$CheckedStateTracker;,
        Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;,
        Lcom/youku/widget/RadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/widget/RadioGroup;->setOrientation(I)V

    .line 56
    invoke-direct {p0}, Lcom/youku/widget/RadioGroup;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v2, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youku/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 64
    iput v2, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    .line 66
    const/4 v0, 0x1

    .line 67
    .local v0, "index":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/youku/widget/RadioGroup;->setOrientation(I)V

    .line 69
    invoke-direct {p0}, Lcom/youku/widget/RadioGroup;->init()V

    .line 70
    return-void
.end method

.method static synthetic access$300(Lcom/youku/widget/RadioGroup;Landroid/widget/RadioButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/RadioGroup;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/youku/widget/RadioGroup;->checkRadioButton(Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/widget/RadioGroup;)Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/RadioGroup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/widget/RadioGroup;->mOnCheckedChangeListener:Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/widget/RadioGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/RadioGroup;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/youku/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$502(Lcom/youku/widget/RadioGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/RadioGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/youku/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$600(Lcom/youku/widget/RadioGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/RadioGroup;

    .prologue
    .line 40
    iget v0, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$700(Lcom/youku/widget/RadioGroup;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/RadioGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/youku/widget/RadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/youku/widget/RadioGroup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/RadioGroup;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/youku/widget/RadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/youku/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/RadioGroup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private checkRadioButton(Landroid/widget/RadioButton;)V
    .locals 9
    .param p1, "radioButton"    # Landroid/widget/RadioButton;

    .prologue
    const/4 v8, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/youku/widget/RadioGroup;->getChildCount()I

    move-result v5

    .line 151
    .local v5, "radioCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_5

    .line 152
    invoke-virtual {p0, v3}, Lcom/youku/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "child":Landroid/view/View;
    instance-of v7, v1, Landroid/widget/RadioButton;

    if-eqz v7, :cond_2

    .line 154
    if-ne v1, p1, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result v7

    iput v7, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    .line 151
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    .restart local v1    # "child":Landroid/view/View;
    :cond_1
    check-cast v1, Landroid/widget/RadioButton;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 160
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    instance-of v7, v1, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    move-object v7, v1

    .line 161
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 162
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v2, :cond_0

    move-object v7, v1

    .line 163
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 164
    .local v6, "view":Landroid/view/View;
    instance-of v7, v6, Landroid/widget/RadioButton;

    if-eqz v7, :cond_3

    move-object v0, v6

    .line 165
    check-cast v0, Landroid/widget/RadioButton;

    .line 166
    .local v0, "button":Landroid/widget/RadioButton;
    if-ne v0, p1, :cond_4

    .line 167
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result v7

    iput v7, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    .line 162
    .end local v0    # "button":Landroid/widget/RadioButton;
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 170
    .restart local v0    # "button":Landroid/widget/RadioButton;
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    .line 176
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v4    # "j":I
    .end local v6    # "view":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    new-instance v0, Lcom/youku/widget/RadioGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/youku/widget/RadioGroup$CheckedStateTracker;-><init>(Lcom/youku/widget/RadioGroup;Lcom/youku/widget/RadioGroup$1;)V

    iput-object v0, p0, Lcom/youku/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 74
    new-instance v0, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/youku/widget/RadioGroup;Lcom/youku/widget/RadioGroup$1;)V

    iput-object v0, p0, Lcom/youku/widget/RadioGroup;->mPassThroughListener:Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;

    .line 75
    iget-object v0, p0, Lcom/youku/widget/RadioGroup;->mPassThroughListener:Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 76
    return-void
.end method

.method private setCheckedId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    .line 207
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/youku/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, "checkedView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 212
    check-cast v0, Landroid/widget/RadioButton;

    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 105
    instance-of v4, p1, Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 107
    check-cast v4, Landroid/widget/RadioButton;

    new-instance v5, Lcom/youku/widget/RadioGroup$1;

    invoke-direct {v5, p0, p1}, Lcom/youku/widget/RadioGroup$1;-><init>(Lcom/youku/widget/RadioGroup;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void

    .line 120
    :cond_1
    instance-of v4, p1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 121
    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 122
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    move-object v4, p1

    .line 123
    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 124
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 125
    check-cast v0, Landroid/widget/RadioButton;

    .line 128
    .local v0, "button":Landroid/widget/RadioButton;
    new-instance v4, Lcom/youku/widget/RadioGroup$2;

    invoke-direct {v4, p0, v0}, Lcom/youku/widget/RadioGroup$2;-><init>(Lcom/youku/widget/RadioGroup;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    .end local v0    # "button":Landroid/widget/RadioButton;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public check(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x1

    .line 190
    if-eq p1, v2, :cond_0

    iget v0, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    if-eq v0, v2, :cond_1

    .line 195
    iget v0, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/youku/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 198
    :cond_1
    if-eq p1, v2, :cond_2

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 202
    :cond_2
    invoke-direct {p0, p1}, Lcom/youku/widget/RadioGroup;->setCheckedId(I)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 266
    instance-of v0, p1, Lcom/youku/widget/RadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/youku/widget/RadioGroup;->check(I)V

    .line 241
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/youku/widget/RadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 271
    new-instance v0, Lcom/youku/widget/RadioGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/youku/widget/RadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/youku/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/youku/widget/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/youku/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/youku/widget/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/youku/widget/RadioGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 258
    new-instance v0, Lcom/youku/widget/RadioGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/youku/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/youku/widget/RadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 95
    iget v0, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    iput-boolean v2, p0, Lcom/youku/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 97
    iget v0, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/youku/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 99
    iget v0, p0, Lcom/youku/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/youku/widget/RadioGroup;->setCheckedId(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 277
    const-class v0, Lcom/youku/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 283
    const-class v0, Lcom/youku/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/youku/widget/RadioGroup;->mOnCheckedChangeListener:Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;

    .line 251
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/widget/RadioGroup;->mPassThroughListener:Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/youku/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 85
    return-void
.end method
