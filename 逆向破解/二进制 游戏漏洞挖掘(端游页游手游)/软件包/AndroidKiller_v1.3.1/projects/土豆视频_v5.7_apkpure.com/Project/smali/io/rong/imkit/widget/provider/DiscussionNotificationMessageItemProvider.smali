.class public Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "DiscussionNotificationMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/DiscussionNotificationMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    centerInHorizontal = true
    messageContent = Lio/rong/message/DiscussionNotificationMessage;
    showPortrait = false
    showSummaryWithName = false
.end annotation


# static fields
.field private static final DISCUSSION_ADD_MEMBER:I = 0x1

.field private static final DISCUSSION_EXIT:I = 0x2

.field private static final DISCUSSION_MEMBER_INVITE:I = 0x5

.field private static final DISCUSSION_REMOVE:I = 0x4

.field private static final DISCUSSION_RENAME:I = 0x3


# instance fields
.field mDownloadHandler:Landroid/os/Handler;

.field mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 64
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DiscussionNotificationMessageItemProvider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->mWorkThread:Landroid/os/HandlerThread;

    .line 66
    iget-object v0, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->mDownloadHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private final getWrapContent(Landroid/content/Context;Lio/rong/message/DiscussionNotificationMessage;)Ljava/lang/String;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "discussionNotificationMessage"    # Lio/rong/message/DiscussionNotificationMessage;

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    const-string v3, ""

    .line 361
    :goto_0
    return-object v3

    .line 131
    :cond_0
    const/4 v9, 0x0

    .line 132
    .local v9, "operatedUserIds":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lio/rong/message/DiscussionNotificationMessage;->getExtension()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "extension":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lio/rong/message/DiscussionNotificationMessage;->getOperator()Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "operatorId":Ljava/lang/String;
    const-string v4, ""

    .line 135
    .local v4, "currentUserId":Ljava/lang/String;
    const-string v3, ""

    .line 136
    .local v3, "content":Ljava/lang/String;
    const/4 v10, 0x0

    .line 138
    .local v10, "operatedUserIdsLength":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 140
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 141
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 145
    :goto_1
    array-length v10, v9

    .line 148
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 149
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    .line 152
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 153
    const-string v3, ""

    goto :goto_0

    .line 143
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    .end local v9    # "operatedUserIds":[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v5, v9, v18

    .restart local v9    # "operatedUserIds":[Ljava/lang/String;
    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lio/rong/message/DiscussionNotificationMessage;->getType()I

    move-result v13

    .line 164
    .local v13, "operatorType":I
    packed-switch v13, :pswitch_data_0

    .line 355
    const-string v3, ""

    .line 359
    :cond_5
    :goto_2
    const-class v18, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;

    const-string v19, "content return"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :pswitch_0
    if-eqz v9, :cond_5

    .line 175
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_you:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 178
    .local v17, "you":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_7

    .line 180
    const/16 v18, 0x0

    aget-object v15, v9, v18

    .line 181
    .local v15, "userId":Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 183
    .local v16, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_6

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_added:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "formatString":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 186
    goto :goto_2

    .line 187
    .end local v6    # "formatString":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto :goto_2

    .line 191
    .end local v15    # "userId":Ljava/lang/String;
    .end local v16    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_add:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 192
    .restart local v6    # "formatString":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    const/16 v19, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 197
    .end local v6    # "formatString":Ljava/lang/String;
    .end local v17    # "you":Ljava/lang/String;
    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_b

    .line 198
    const/16 v18, 0x0

    aget-object v15, v9, v18

    .line 199
    .restart local v15    # "userId":Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 200
    .restart local v16    # "userInfo":Lio/rong/imlib/model/UserInfo;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v11

    .line 202
    .local v11, "operator":Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_9

    if-eqz v11, :cond_9

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_added:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 204
    .restart local v6    # "formatString":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v11}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 205
    goto/16 :goto_2

    .line 207
    .end local v6    # "formatString":Ljava/lang/String;
    :cond_9
    if-nez v16, :cond_a

    .line 208
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    .line 210
    :cond_a
    if-nez v11, :cond_5

    .line 211
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 215
    .end local v11    # "operator":Lio/rong/imlib/model/UserInfo;
    .end local v15    # "userId":Ljava/lang/String;
    .end local v16    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_b
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v11

    .line 217
    .restart local v11    # "operator":Lio/rong/imlib/model/UserInfo;
    if-eqz v11, :cond_c

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_add:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 219
    .restart local v6    # "formatString":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v11}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 220
    goto/16 :goto_2

    .line 221
    .end local v6    # "formatString":Ljava/lang/String;
    :cond_c
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 235
    .end local v11    # "operator":Lio/rong/imlib/model/UserInfo;
    :pswitch_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v11

    .line 237
    .restart local v11    # "operator":Lio/rong/imlib/model/UserInfo;
    if-eqz v11, :cond_d

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_exit:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 239
    .restart local v6    # "formatString":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v11}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 240
    goto/16 :goto_2

    .line 241
    .end local v6    # "formatString":Ljava/lang/String;
    :cond_d
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 252
    .end local v11    # "operator":Lio/rong/imlib/model/UserInfo;
    :pswitch_2
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_you:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 254
    .restart local v17    # "you":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_rename:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 255
    .restart local v6    # "formatString":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 256
    goto/16 :goto_2

    .line 257
    .end local v6    # "formatString":Ljava/lang/String;
    .end local v17    # "you":Ljava/lang/String;
    :cond_e
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v14

    .line 259
    .local v14, "operatorUserInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v14, :cond_f

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_rename:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 261
    .restart local v6    # "formatString":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v14}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 262
    goto/16 :goto_2

    .line 263
    .end local v6    # "formatString":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 275
    .end local v14    # "operatorUserInfo":Lio/rong/imlib/model/UserInfo;
    :pswitch_3
    const/16 v18, 0x0

    aget-object v8, v9, v18

    .line 277
    .local v8, "operatedUserId":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 278
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 280
    .restart local v16    # "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_10

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_you:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 282
    .restart local v17    # "you":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_who_removed:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 283
    .restart local v6    # "formatString":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 284
    goto/16 :goto_2

    .line 285
    .end local v6    # "formatString":Ljava/lang/String;
    .end local v17    # "you":Ljava/lang/String;
    :cond_10
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 289
    .end local v16    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_11
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 290
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v14

    .line 292
    .restart local v14    # "operatorUserInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v14, :cond_12

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_removed:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 294
    .restart local v6    # "formatString":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v14}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 295
    goto/16 :goto_2

    .line 296
    .end local v6    # "formatString":Ljava/lang/String;
    :cond_12
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 301
    .end local v14    # "operatorUserInfo":Lio/rong/imlib/model/UserInfo;
    :cond_13
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 302
    .restart local v16    # "userInfo":Lio/rong/imlib/model/UserInfo;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v14

    .line 304
    .restart local v14    # "operatorUserInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v16, :cond_14

    if-eqz v14, :cond_14

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_who_removed:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 306
    .restart local v6    # "formatString":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v14}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 307
    goto/16 :goto_2

    .line 309
    .end local v6    # "formatString":Ljava/lang/String;
    :cond_14
    if-nez v14, :cond_15

    .line 310
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    .line 312
    :cond_15
    if-nez v16, :cond_5

    .line 313
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 326
    .end local v8    # "operatedUserId":Ljava/lang/String;
    .end local v14    # "operatorUserInfo":Lio/rong/imlib/model/UserInfo;
    .end local v16    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :pswitch_4
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_you:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 329
    .restart local v17    # "you":Ljava/lang/String;
    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_is_open_invite_close:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "closeFormat":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 332
    goto/16 :goto_2

    .end local v2    # "closeFormat":Ljava/lang/String;
    :cond_16
    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_is_open_invite_open:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "openFormat":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 337
    .end local v7    # "openFormat":Ljava/lang/String;
    .end local v17    # "you":Ljava/lang/String;
    :cond_17
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v14

    .line 339
    .restart local v14    # "operatorUserInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v14, :cond_19

    .line 340
    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_is_open_invite_close:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2    # "closeFormat":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v14}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 343
    goto/16 :goto_2

    .end local v2    # "closeFormat":Ljava/lang/String;
    :cond_18
    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_discussion_nt_msg_for_is_open_invite_open:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 345
    .restart local v7    # "openFormat":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v14}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 346
    goto/16 :goto_2

    .line 348
    .end local v7    # "openFormat":Ljava/lang/String;
    :cond_19
    invoke-static {}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->getInstance()Lio/rong/imkit/util/MessageProviderUserInfoHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lio/rong/imkit/util/MessageProviderUserInfoHelper;->registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 36
    check-cast p3, Lio/rong/message/DiscussionNotificationMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/DiscussionNotificationMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;

    .line 73
    .local v1, "viewHolder":Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;
    invoke-virtual {p0, p3}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->getContentSummary(Lio/rong/message/DiscussionNotificationMessage;)Landroid/text/Spannable;

    move-result-object v0

    .line 75
    .local v0, "spannable":Landroid/text/Spannable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 76
    iget-object v2, v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v2, v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v2, v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .param p1, "x0"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 36
    check-cast p1, Lio/rong/message/DiscussionNotificationMessage;

    .end local p1    # "x0":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->getContentSummary(Lio/rong/message/DiscussionNotificationMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/DiscussionNotificationMessage;)Landroid/text/Spannable;
    .locals 2
    .param p1, "data"    # Lio/rong/message/DiscussionNotificationMessage;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string v0, "getContentSummary"

    const-string v1, "DiscussionNotificationMessage is null;"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const-string v0, "getContentSummary"

    const-string v1, "call getContentSummary()  method "

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->getWrapContent(Landroid/content/Context;Lio/rong/message/DiscussionNotificationMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_discussion_notification_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;)V

    .line 109
    .local v1, "viewHolder":Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_msg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    .line 110
    iget-object v2, v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    return-object v0
.end method

.method public onEventBackgroundThread(Lio/rong/imlib/model/UserInfo;)V
    .locals 4
    .param p1, "userInfo"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 394
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->mDownloadHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$2;-><init>(Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;Lio/rong/imlib/model/UserInfo;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 36
    check-cast p3, Lio/rong/message/DiscussionNotificationMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/DiscussionNotificationMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 100
    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 36
    check-cast p3, Lio/rong/message/DiscussionNotificationMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/DiscussionNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/DiscussionNotificationMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 366
    const/4 v3, 0x0

    .line 367
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 369
    :cond_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v2

    .line 370
    .local v2, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getPublicServiceInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/PublicServiceProfile;

    .line 371
    .local v0, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 380
    .end local v0    # "info":Lio/rong/imlib/model/PublicServiceProfile;
    .end local v2    # "key":Lio/rong/imkit/model/ConversationKey;
    :cond_1
    :goto_0
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 382
    .local v1, "items":[Ljava/lang/String;
    invoke-static {v3, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$1;

    invoke-direct {v6, p0, p4}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v6, v5}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 391
    return-void

    .line 374
    .end local v1    # "items":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imlib/model/UserInfo;

    .line 375
    .local v4, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v4, :cond_1

    .line 376
    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
