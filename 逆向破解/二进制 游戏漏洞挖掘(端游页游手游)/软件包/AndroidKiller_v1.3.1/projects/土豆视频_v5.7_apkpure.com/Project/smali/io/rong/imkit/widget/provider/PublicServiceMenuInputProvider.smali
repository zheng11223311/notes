.class public Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
.source "PublicServiceMenuInputProvider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$PopupMenu;
    }
.end annotation


# instance fields
.field conversation:Lio/rong/imlib/model/Conversation;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 0
    .param p1, "context"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 41
    iput-object p1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;Lio/rong/imlib/model/PublicServiceMenuItem;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;
    .param p1, "x1"    # Lio/rong/imlib/model/PublicServiceMenuItem;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->onMenuItemSelect(Lio/rong/imlib/model/PublicServiceMenuItem;)V

    return-void
.end method

.method private onMenuItemSelect(Lio/rong/imlib/model/PublicServiceMenuItem;)V
    .locals 8
    .param p1, "item"    # Lio/rong/imlib/model/PublicServiceMenuItem;

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceMenuItem;->getType()Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->View:Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->mContext:Landroid/content/Context;

    const-class v1, Lio/rong/imkit/tools/RongWebviewActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    const-string/jumbo v0, "url"

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceMenuItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {p1}, Lio/rong/message/PublicServiceCommandMessage;->obtain(Lio/rong/imlib/model/PublicServiceMenuItem;)Lio/rong/message/PublicServiceCommandMessage;

    move-result-object v3

    .line 112
    .local v3, "msg":Lio/rong/message/PublicServiceCommandMessage;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    .line 115
    return-void
.end method


# virtual methods
.method public obtainSwitchDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_voice:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onActive(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "inputView"    # Lio/rong/imkit/widget/InputView;

    .prologue
    .line 52
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v10

    iput-object v10, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    .line 53
    iget-object v10, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-static {v10, v11}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v5

    .line 54
    .local v5, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v10

    invoke-virtual {v5}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v1

    .line 56
    .local v1, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-nez v1, :cond_1

    .line 90
    :cond_0
    return-object p2

    .line 59
    :cond_1
    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getMenu()Lio/rong/imlib/model/PublicServiceMenu;

    move-result-object v8

    .line 60
    .local v8, "menu":Lio/rong/imlib/model/PublicServiceMenu;
    invoke-virtual {v8}, Lio/rong/imlib/model/PublicServiceMenu;->getMenuItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 61
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/rong/imlib/model/PublicServiceMenuItem;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 64
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/PublicServiceMenuItem;

    .line 66
    .local v2, "item":Lio/rong/imlib/model/PublicServiceMenuItem;
    sget v10, Lio/rong/imkit/R$layout;->rc_item_public_service_input_menu:I

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 67
    .local v6, "layout":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v7, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 68
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    sget v10, Lio/rong/imkit/R$id;->rc_title:I

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 71
    .local v9, "title":Landroid/widget/TextView;
    invoke-virtual {v2}, Lio/rong/imlib/model/PublicServiceMenuItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget v10, Lio/rong/imkit/R$id;->rc_icon:I

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 73
    .local v4, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lio/rong/imlib/model/PublicServiceMenuItem;->getSubMenuItems()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 74
    iget-object v10, p0, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lio/rong/imkit/R$drawable;->rc_ic_trangle:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_2
    new-instance v10, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;

    invoke-direct {v10, p0, v2}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider$1;-><init>(Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;Lio/rong/imlib/model/PublicServiceMenuItem;)V

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInactive(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    return-void
.end method

.method public onSwitch(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method
