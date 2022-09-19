.class public Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;
.super Ljava/lang/Object;
.source "YoukuPopupMenu.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;,
        Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;,
        Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;

.field private mContext:Landroid/content/Context;

.field private mHeaderTitleView:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsView:Landroid/widget/ListView;

.field private mListener:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mContext:Landroid/content/Context;

    .line 44
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$dimen;->popup_menu_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mWidth:I

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mItems:Ljava/util/List;

    .line 50
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->initPopupWindow()V

    .line 52
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/youku/gamecenter/R$layout;->popup_menu:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "contentView":Landroid/view/View;
    sget v1, Lcom/youku/gamecenter/R$id;->items:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mItemsView:Landroid/widget/ListView;

    .line 54
    sget v1, Lcom/youku/gamecenter/R$id;->header_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mHeaderTitleView:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mItemsView:Landroid/widget/ListView;

    new-instance v2, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$1;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$1;-><init>(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;)Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mListener:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private initPopupWindow()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper;->newPopInstance(Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 75
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 76
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 77
    return-void
.end method

.method private preShow()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mAdapter:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mAdapter:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;

    .line 108
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mItemsView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mAdapter:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mAdapter:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public add(II)Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;
    .locals 1
    .param p1, "itemId"    # I
    .param p2, "titleRes"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->add(ILjava/lang/String;)Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(ILjava/lang/String;)Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;
    .locals 2
    .param p1, "itemId"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;

    invoke-direct {v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;-><init>()V

    .line 138
    .local v0, "item":Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;
    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->setItemId(I)V

    .line 139
    invoke-virtual {v0, p2}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->setTitle(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mAdapter:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mAdapter:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;->notifyDataSetChanged()V

    .line 153
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 121
    :cond_0
    return-void
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mHeaderTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mHeaderTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mHeaderTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 174
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 163
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mListener:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;

    .line 194
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mWidth:I

    .line 183
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 184
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 81
    iget v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mWidth:I

    invoke-static {p1, v1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper;->getGravity(Landroid/view/View;I)I

    move-result v0

    .line 82
    .local v0, "gravity":I
    invoke-virtual {p0, p1, v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->showAsDropDown(Landroid/view/View;I)V

    .line 83
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;I)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PopupMenu#showAsDropDown anchor cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PopupMenu#add was not called with a menu item to display."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->preShow()V

    .line 100
    invoke-static {p1, p2}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper;->getPopupPosition(Landroid/view/View;I)[I

    move-result-object v0

    .line 101
    .local v0, "position":[I
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 102
    return-void
.end method
