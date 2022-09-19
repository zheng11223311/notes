.class public Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "SearchTudouHistoryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak",
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;
    }
.end annotation


# static fields
.field private static final DELETE_ALL_HISTORY_LIST:I = 0xc6

.field private static final GET_SEARCH_HISTORY_WORDS_FAIL:I = 0xc4

.field private static final GET_SEARCH_HISTORY_WORDS_SUCCESS:I = 0xc5

.field private static final REGET_HISTORY_AGAIN:I = 0xbd

.field public static loadHistory:Z


# instance fields
.field private RelativeHisNoResult:Landroid/widget/RelativeLayout;

.field adapterHis:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private hislist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfHistory;",
            ">;"
        }
    .end annotation
.end field

.field historyBack:Landroid/widget/RelativeLayout;

.field listViewHis:Landroid/widget/ListView;

.field private scrolledX:I

.field private searchNoHistoryImg:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->loadHistory:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;-><init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->handler:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->hislist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->searchNoHistoryImg:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->getHistoryList(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->scrolledX:I

    return v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->RelativeHisNoResult:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getHisList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->hislist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->hislist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->hislist:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getHistoryList(I)V
    .locals 4
    .param p1, "scrollX"    # I

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->getHisList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->hislist:Ljava/util/ArrayList;

    .line 148
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getAllSearchHistory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getSearchHistory()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->hislist:Ljava/util/ArrayList;

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->hislist:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->hislist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    new-instance v1, Lcom/youku/vo/SearchOfHistory;

    invoke-direct {v1}, Lcom/youku/vo/SearchOfHistory;-><init>()V

    .line 153
    .local v1, "word":Lcom/youku/vo/SearchOfHistory;
    const-string v2, "\u641c\u7d22\u5386\u53f2"

    iput-object v2, v1, Lcom/youku/vo/SearchOfHistory;->word:Ljava/lang/String;

    .line 154
    iput v3, v1, Lcom/youku/vo/SearchOfHistory;->type:I

    .line 155
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->hislist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 156
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 157
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 158
    const/16 v2, 0xc5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 159
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "word":Lcom/youku/vo/SearchOfHistory;
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->handler:Landroid/os/Handler;

    const/16 v3, 0xc4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    const v0, 0x7f0c05e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->historyBack:Landroid/widget/RelativeLayout;

    .line 125
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->historyBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0c05e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    .line 127
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 130
    const v0, 0x7f0c05e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->searchNoHistoryImg:Landroid/widget/RelativeLayout;

    .line 132
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->searchNoHistoryImg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 133
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 351
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f030140

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchHeadLayout;->showSoftInput(Landroid/app/Activity;)V

    .line 113
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 167
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 187
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 120
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 335
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 342
    if-nez p2, :cond_0

    .line 343
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->scrolledX:I

    .line 345
    :cond_0
    return-void
.end method

.method protected showDeleteDialog(Ljava/util/List;)V
    .locals 3
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 190
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 191
    .local v0, "builder":Lcom/youku/widget/TudouDialog;
    const-string v1, "\u60a8\u786e\u5b9a\u5220\u9664\u5168\u90e8\u641c\u7d22\u5386\u53f2\u5417?"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 192
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$2;-><init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 199
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$3;-><init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;Ljava/util/List;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 211
    return-void
.end method
