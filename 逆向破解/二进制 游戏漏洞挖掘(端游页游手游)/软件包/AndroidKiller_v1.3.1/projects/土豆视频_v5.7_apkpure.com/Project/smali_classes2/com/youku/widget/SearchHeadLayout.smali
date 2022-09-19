.class public Lcom/youku/widget/SearchHeadLayout;
.super Landroid/widget/LinearLayout;
.source "SearchHeadLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/SearchHeadLayout$OnEditListener;
    }
.end annotation


# static fields
.field public static IMShow:Z


# instance fields
.field private activity:Lcom/tudou/ui/fragment/SearchTudouActivity;

.field clearContextListener:Landroid/view/View$OnClickListener;

.field private delete:Landroid/widget/ImageView;

.field public editText:Landroid/widget/EditText;

.field private goSeaarch:Landroid/widget/ImageView;

.field goSearchListener:Landroid/view/View$OnClickListener;

.field public isShowSuggestWord:Z

.field isformatPop:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mformatpoupwindow:Landroid/widget/PopupWindow;

.field private onEditListener:Lcom/youku/widget/SearchHeadLayout$OnEditListener;

.field onKeyBoardSearchClickListener:Landroid/widget/TextView$OnEditorActionListener;

.field private searchBack:Landroid/widget/ImageView;

.field searchBackListener:Landroid/view/View$OnClickListener;

.field private searchCancel:Landroid/widget/RelativeLayout;

.field private selectArrow:Landroid/widget/ImageView;

.field private selectLinear:Landroid/widget/LinearLayout;

.field private selectTab:Landroid/widget/TextView;

.field showCursor:Landroid/view/View$OnTouchListener;

.field showPop:Landroid/view/View$OnClickListener;

.field textWatcher:Landroid/text/TextWatcher;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/widget/SearchHeadLayout;->IMShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/SearchHeadLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/SearchHeadLayout;->isShowSuggestWord:Z

    .line 110
    new-instance v0, Lcom/youku/widget/SearchHeadLayout$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/SearchHeadLayout$1;-><init>(Lcom/youku/widget/SearchHeadLayout;)V

    iput-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->showCursor:Landroid/view/View$OnTouchListener;

    .line 124
    new-instance v0, Lcom/youku/widget/SearchHeadLayout$2;

    invoke-direct {v0, p0}, Lcom/youku/widget/SearchHeadLayout$2;-><init>(Lcom/youku/widget/SearchHeadLayout;)V

    iput-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->goSearchListener:Landroid/view/View$OnClickListener;

    .line 133
    new-instance v0, Lcom/youku/widget/SearchHeadLayout$3;

    invoke-direct {v0, p0}, Lcom/youku/widget/SearchHeadLayout$3;-><init>(Lcom/youku/widget/SearchHeadLayout;)V

    iput-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->searchBackListener:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Lcom/youku/widget/SearchHeadLayout$4;

    invoke-direct {v0, p0}, Lcom/youku/widget/SearchHeadLayout$4;-><init>(Lcom/youku/widget/SearchHeadLayout;)V

    iput-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->clearContextListener:Landroid/view/View$OnClickListener;

    .line 153
    new-instance v0, Lcom/youku/widget/SearchHeadLayout$5;

    invoke-direct {v0, p0}, Lcom/youku/widget/SearchHeadLayout$5;-><init>(Lcom/youku/widget/SearchHeadLayout;)V

    iput-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->onKeyBoardSearchClickListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 162
    new-instance v0, Lcom/youku/widget/SearchHeadLayout$6;

    invoke-direct {v0, p0}, Lcom/youku/widget/SearchHeadLayout$6;-><init>(Lcom/youku/widget/SearchHeadLayout;)V

    iput-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->textWatcher:Landroid/text/TextWatcher;

    .line 265
    new-instance v0, Lcom/youku/widget/SearchHeadLayout$7;

    invoke-direct {v0, p0}, Lcom/youku/widget/SearchHeadLayout$7;-><init>(Lcom/youku/widget/SearchHeadLayout;)V

    iput-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->showPop:Landroid/view/View$OnClickListener;

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/SearchHeadLayout;->isformatPop:Z

    .line 62
    const-string v0, "search_tab"

    const-string v1, "video"

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    check-cast p1, Lcom/tudou/ui/fragment/SearchTudouActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/youku/widget/SearchHeadLayout;->activity:Lcom/tudou/ui/fragment/SearchTudouActivity;

    .line 64
    invoke-direct {p0}, Lcom/youku/widget/SearchHeadLayout;->initView()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/SearchHeadLayout;)Lcom/tudou/ui/fragment/SearchTudouActivity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchHeadLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->activity:Lcom/tudou/ui/fragment/SearchTudouActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/SearchHeadLayout;)Lcom/youku/widget/SearchHeadLayout$OnEditListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchHeadLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->onEditListener:Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/widget/SearchHeadLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchHeadLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->delete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/widget/SearchHeadLayout;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/SearchHeadLayout;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/youku/widget/SearchHeadLayout;->popUpFormatList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/widget/SearchHeadLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchHeadLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->selectTab:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/widget/SearchHeadLayout;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchHeadLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->mformatpoupwindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/widget/SearchHeadLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchHeadLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->selectArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 69
    const-string v0, "layout_inflater"

    .line 70
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/widget/SearchHeadLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0302ba

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->view:Landroid/view/View;

    .line 73
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->view:Landroid/view/View;

    const v3, 0x7f0c0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 75
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->view:Landroid/view/View;

    const v3, 0x7f0c0c67

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->goSeaarch:Landroid/widget/ImageView;

    .line 76
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->view:Landroid/view/View;

    const v3, 0x7f0c0c65

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->searchBack:Landroid/widget/ImageView;

    .line 77
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->view:Landroid/view/View;

    const v3, 0x7f0c0c66

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->searchCancel:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->view:Landroid/view/View;

    const v3, 0x7f0c0c69

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->selectLinear:Landroid/widget/LinearLayout;

    .line 79
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->view:Landroid/view/View;

    const v3, 0x7f0c0c6a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->selectTab:Landroid/widget/TextView;

    .line 80
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->view:Landroid/view/View;

    const v3, 0x7f0c0c6b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->selectArrow:Landroid/widget/ImageView;

    .line 81
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->selectLinear:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/youku/widget/SearchHeadLayout;->showPop:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->view:Landroid/view/View;

    const v3, 0x7f0c0c6c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    .line 83
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->view:Landroid/view/View;

    const v3, 0x7f0c0c6d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->delete:Landroid/widget/ImageView;

    .line 84
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->searchBack:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/youku/widget/SearchHeadLayout;->searchBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->searchCancel:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/youku/widget/SearchHeadLayout;->goSearchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->delete:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/youku/widget/SearchHeadLayout;->clearContextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/youku/widget/SearchHeadLayout;->onKeyBoardSearchClickListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 88
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/youku/widget/SearchHeadLayout;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    iget-object v2, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/youku/widget/SearchHeadLayout;->showCursor:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    return-void
.end method

.method private popUpFormatList(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 281
    iget-boolean v4, p0, Lcom/youku/widget/SearchHeadLayout;->isformatPop:Z

    if-nez v4, :cond_0

    .line 282
    iget-object v4, p0, Lcom/youku/widget/SearchHeadLayout;->activity:Lcom/tudou/ui/fragment/SearchTudouActivity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/tudou/ui/fragment/SearchTudouActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 284
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0302c2

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 286
    .local v3, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/tudou/adapter/SearchTypeAdapter;

    iget-object v4, p0, Lcom/youku/widget/SearchHeadLayout;->activity:Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-direct {v0, v4, p1}, Lcom/tudou/adapter/SearchTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 287
    .local v0, "adapter":Lcom/tudou/adapter/SearchTypeAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    new-instance v4, Lcom/youku/widget/SearchHeadLayout$8;

    invoke-direct {v4, p0, p1}, Lcom/youku/widget/SearchHeadLayout$8;-><init>(Lcom/youku/widget/SearchHeadLayout;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 302
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/youku/widget/SearchHeadLayout;->activity:Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/SearchTudouActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a04c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v3, v5, v6, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/youku/widget/SearchHeadLayout;->mformatpoupwindow:Landroid/widget/PopupWindow;

    .line 305
    iget-object v4, p0, Lcom/youku/widget/SearchHeadLayout;->mformatpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 306
    invoke-virtual {p0}, Lcom/youku/widget/SearchHeadLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020854

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 308
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/youku/widget/SearchHeadLayout;->mformatpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v4, p0, Lcom/youku/widget/SearchHeadLayout;->selectArrow:Landroid/widget/ImageView;

    const v5, 0x7f020856

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    iget-object v4, p0, Lcom/youku/widget/SearchHeadLayout;->mformatpoupwindow:Landroid/widget/PopupWindow;

    new-instance v5, Lcom/youku/widget/SearchHeadLayout$9;

    invoke-direct {v5, p0}, Lcom/youku/widget/SearchHeadLayout$9;-><init>(Lcom/youku/widget/SearchHeadLayout;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 319
    iget-object v4, p0, Lcom/youku/widget/SearchHeadLayout;->mformatpoupwindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/youku/widget/SearchHeadLayout;->selectLinear:Landroid/widget/LinearLayout;

    const/16 v6, -0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 320
    iput-boolean v8, p0, Lcom/youku/widget/SearchHeadLayout;->isformatPop:Z

    .line 325
    .end local v0    # "adapter":Lcom/tudou/adapter/SearchTypeAdapter;
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "lv":Landroid/widget/ListView;
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v4, p0, Lcom/youku/widget/SearchHeadLayout;->mformatpoupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 323
    iput-boolean v7, p0, Lcom/youku/widget/SearchHeadLayout;->isformatPop:Z

    goto :goto_0
.end method


# virtual methods
.method public changeHead(I)V
    .locals 3
    .param p1, "target"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 246
    packed-switch p1, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->searchBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->searchCancel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->searchBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->searchCancel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 256
    :pswitch_2
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->searchCancel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->searchBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->searchBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, ""

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    const-string v0, ""

    .line 229
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hideSoftInput(Landroid/app/Activity;)V
    .locals 4
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 101
    const-string v1, "SoftInput"

    const-string v2, "hide"

    invoke-static {v1, v2}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 105
    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 106
    iput-boolean v3, p0, Lcom/youku/widget/SearchHeadLayout;->isShowSuggestWord:Z

    .line 107
    sput-boolean v3, Lcom/youku/widget/SearchHeadLayout;->IMShow:Z

    .line 108
    return-void
.end method

.method public setEditHintText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method public setEditText(Ljava/lang/String;II)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "curfrag"    # I
    .param p3, "type"    # I

    .prologue
    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_0
    return-void

    .line 198
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 208
    :goto_1
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->selectTab:Landroid/widget/TextView;

    const-string v1, "\u89c6\u9891"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const-string v0, "search_tab"

    const-string v1, "video"

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :pswitch_1
    const-string v0, "search_tab"

    const-string v1, "channel"

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->selectTab:Landroid/widget/TextView;

    const-string v1, "\u81ea\u9891\u9053"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInnnerSelShow(I)V
    .locals 0
    .param p1, "visib"    # I

    .prologue
    .line 238
    return-void
.end method

.method public setOnEditListener(Lcom/youku/widget/SearchHeadLayout$OnEditListener;)V
    .locals 0
    .param p1, "onEditListener"    # Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/youku/widget/SearchHeadLayout;->onEditListener:Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    .line 234
    return-void
.end method

.method public setSoftInput()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->activity:Lcom/tudou/ui/fragment/SearchTudouActivity;

    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/youku/util/Util;->showSoftInput(Landroid/app/Activity;Landroid/view/View;)V

    .line 218
    return-void
.end method

.method public showSoftInput(Landroid/app/Activity;)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 93
    const-string v0, "SoftInput"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/youku/util/Util;->showSoftInput(Landroid/app/Activity;Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 96
    iput-boolean v2, p0, Lcom/youku/widget/SearchHeadLayout;->isShowSuggestWord:Z

    .line 97
    sput-boolean v2, Lcom/youku/widget/SearchHeadLayout;->IMShow:Z

    .line 98
    return-void
.end method

.method public switchTab(I)V
    .locals 0
    .param p1, "tab"    # I

    .prologue
    .line 242
    return-void
.end method
