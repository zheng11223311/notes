.class public Lio/rong/imkit/util/ConversationListUtils;
.super Ljava/lang/Object;
.source "ConversationListUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/util/ConversationListUtils$1;
    }
.end annotation


# static fields
.field private static self:Lio/rong/imkit/util/ConversationListUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lio/rong/imkit/util/ConversationListUtils;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lio/rong/imkit/util/ConversationListUtils;->self:Lio/rong/imkit/util/ConversationListUtils;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lio/rong/imkit/util/ConversationListUtils;

    invoke-direct {v0}, Lio/rong/imkit/util/ConversationListUtils;-><init>()V

    sput-object v0, Lio/rong/imkit/util/ConversationListUtils;->self:Lio/rong/imkit/util/ConversationListUtils;

    .line 21
    :cond_0
    sget-object v0, Lio/rong/imkit/util/ConversationListUtils;->self:Lio/rong/imkit/util/ConversationListUtils;

    return-object v0
.end method


# virtual methods
.method public findPositionForCancleTop(ILio/rong/imkit/widget/adapter/ConversationListAdapter;)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "mAdapter"    # Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    .prologue
    .line 123
    invoke-virtual {p2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v0

    .line 124
    .local v0, "count":I
    const/4 v2, 0x0

    .line 126
    .local v2, "tap":I
    if-le p1, v0, :cond_0

    .line 127
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the index for the position is error!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 131
    invoke-virtual {p2, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, p1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    invoke-virtual {p2, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 133
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_2
    add-int v3, p1, v2

    return v3
.end method

.method public findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/ConversationListAdapter;)I
    .locals 8
    .param p1, "uiconversation"    # Lio/rong/imkit/model/UIConversation;
    .param p2, "adapter"    # Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    .prologue
    .line 85
    invoke-virtual {p2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v0

    .line 86
    .local v0, "count":I
    const/4 v2, 0x0

    .line 88
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 89
    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p2, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 88
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p2, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 96
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_2
    return v2
.end method

.method public findPositionForSetTop(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/ConversationListAdapter;)I
    .locals 8
    .param p1, "uiconversation"    # Lio/rong/imkit/model/UIConversation;
    .param p2, "adapter"    # Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    .prologue
    .line 106
    invoke-virtual {p2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v0

    .line 107
    .local v0, "count":I
    const/4 v2, 0x0

    .line 109
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 110
    invoke-virtual {p2, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return v2
.end method

.method public initConversationGatherState(Landroid/net/Uri;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 34
    const/16 v5, 0x8

    new-array v1, v5, [Ljava/lang/String;

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    const/4 v5, 0x2

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x4

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x6

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x7

    sget-object v6, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$PublicServiceType;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 38
    .local v1, "conversationType":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 39
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 40
    const-string/jumbo v5, "true"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 41
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    const-string v5, "false"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 43
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 47
    .end local v4    # "type":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setGatheredConversationTitle(Lio/rong/imlib/model/Conversation$ConversationType;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v0, ""

    .line 51
    .local v0, "title":Ljava/lang/String;
    sget-object v1, Lio/rong/imkit/util/ConversationListUtils$1;->$SwitchMap$io$rong$imlib$model$Conversation$ConversationType:[I

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 77
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "It\'s not the default conversation type!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_my_private_conversation:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    goto :goto_0

    .line 56
    :pswitch_1
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_my_group:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    goto :goto_0

    .line 59
    :pswitch_2
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_my_discussion:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    goto :goto_0

    .line 62
    :pswitch_3
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_my_chatroom:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    goto :goto_0

    .line 65
    :pswitch_4
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_my_customer_service:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    goto :goto_0

    .line 68
    :pswitch_5
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_system_conversation:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    goto :goto_0

    .line 71
    :pswitch_6
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_app_public_service:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    goto :goto_0

    .line 74
    :pswitch_7
    sget v1, Lio/rong/imkit/R$string;->rc_conversation_list_public_service:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
