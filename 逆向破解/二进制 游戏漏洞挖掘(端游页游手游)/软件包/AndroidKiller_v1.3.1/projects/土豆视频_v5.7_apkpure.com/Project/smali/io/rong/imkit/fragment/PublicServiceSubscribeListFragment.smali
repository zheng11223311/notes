.class public Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;
.super Lio/rong/imkit/fragment/DispatchResultFragment;
.source "PublicServiceSubscribeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;-><init>()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;)Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->mAdapter:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;

    return-object v0
.end method

.method private getDBData()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$3;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$3;-><init>(Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongIMClientWrapper;->getPublicServiceList(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method protected initFragment(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 137
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_public_service_sub_list:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 209
    invoke-super {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;->onDestroyView()V

    .line 210
    return-void
.end method

.method public onEvent(Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;)V
    .locals 0
    .param p1, "event"    # Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-direct {p0}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->getDBData()V

    .line 203
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    sget v0, Lio/rong/imkit/R$id;->rc_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->mListView:Landroid/widget/ListView;

    .line 49
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$1;-><init>(Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$2;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$2;-><init>(Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 97
    new-instance v0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;-><init>(Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->mAdapter:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;

    .line 98
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->mAdapter:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-direct {p0}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->getDBData()V

    .line 102
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 103
    return-void
.end method
