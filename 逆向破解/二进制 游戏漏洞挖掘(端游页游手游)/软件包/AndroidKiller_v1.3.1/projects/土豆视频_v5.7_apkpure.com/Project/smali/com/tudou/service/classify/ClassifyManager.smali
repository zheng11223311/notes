.class public abstract Lcom/tudou/service/classify/ClassifyManager;
.super Ljava/lang/Object;
.source "ClassifyManager.java"

# interfaces
.implements Lcom/tudou/service/classify/Classify;


# static fields
.field public static classifyHomeActivity:Landroid/app/Activity;

.field private static instance:Lcom/tudou/service/classify/ClassifyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShotCutChannel(Landroid/content/Context;Lcom/youku/vo/ChannelListInfo;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channelInfo"    # Lcom/youku/vo/ChannelListInfo;
    .param p2, "channelIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v4, p1, Lcom/youku/vo/ChannelListInfo;->channel_title:Ljava/lang/String;

    .line 71
    .local v4, "name":Ljava/lang/String;
    iget-object v1, p1, Lcom/youku/vo/ChannelListInfo;->channel_id:Ljava/lang/String;

    .line 73
    .local v1, "cid":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v5, "shortcutIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.channel.View"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v6, "cid"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string/jumbo v6, "skip"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const/high16 v6, 0x14200000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lcom/tudou/detail/Test;->isUserIntentValidShortcut()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4, v5}, Lcom/tudou/detail/Test;->hasShortcut(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    .line 80
    .local v3, "isAdd":Z
    :goto_1
    if-nez v3, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, "addShortcut":Landroid/content/Intent;
    const-string v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    const-string v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v6, "duplicate"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const-string v6, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    if-nez p2, :cond_3

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v1}, Lcom/tudou/service/classify/ClassifyManager;->getClannelIconId(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 94
    .local v2, "icon":Landroid/os/Parcelable;
    const-string v6, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    .end local v2    # "icon":Landroid/os/Parcelable;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 79
    .end local v0    # "addShortcut":Landroid/content/Intent;
    .end local v3    # "isAdd":Z
    :cond_2
    invoke-static {v4}, Lcom/tudou/detail/Test;->hasShortcut(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 96
    .restart local v0    # "addShortcut":Landroid/content/Intent;
    .restart local v3    # "isAdd":Z
    :cond_3
    const-string v6, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public static getChannelName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, ""

    .line 155
    .local v0, "channelName":Ljava/lang/String;
    const-string v1, "31"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string/jumbo v0, "\u7efc\u827a"

    .line 198
    :goto_0
    return-object v0

    .line 157
    :cond_0
    const-string v1, "30"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    const-string/jumbo v0, "\u7535\u89c6\u5267"

    goto :goto_0

    .line 159
    :cond_1
    const-string v1, "22"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    const-string/jumbo v0, "\u7535\u5f71"

    goto :goto_0

    .line 161
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    const-string/jumbo v0, "\u52a8\u6f2b"

    goto :goto_0

    .line 163
    :cond_3
    const-string v1, "14"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    const-string/jumbo v0, "\u97f3\u4e50"

    goto :goto_0

    .line 165
    :cond_4
    const-string v1, "1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 166
    const-string/jumbo v0, "\u5a31\u4e50"

    goto :goto_0

    .line 167
    :cond_5
    const-string v1, "5"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    const-string/jumbo v0, "\u641e\u7b11"

    goto :goto_0

    .line 169
    :cond_6
    const-string v1, "32"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 170
    const-string/jumbo v0, "\u65f6\u5c1a"

    goto :goto_0

    .line 171
    :cond_7
    const-string v1, "3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 172
    const-string/jumbo v0, "\u4e50\u6d3b"

    goto :goto_0

    .line 173
    :cond_8
    const-string v1, "422"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 174
    const-string/jumbo v0, "\u4f1a\u5458"

    goto :goto_0

    .line 175
    :cond_9
    const-string v1, "29"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 176
    const-string/jumbo v0, "\u70ed\u70b9"

    goto :goto_0

    .line 177
    :cond_a
    const-string v1, "28"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 178
    const-string/jumbo v0, "\u7eaa\u5b9e"

    goto/16 :goto_0

    .line 179
    :cond_b
    const-string v1, "99"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 180
    const-string/jumbo v0, "\u539f\u521b"

    goto/16 :goto_0

    .line 181
    :cond_c
    const-string v1, "26"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 182
    const-string/jumbo v0, "\u6c7d\u8f66"

    goto/16 :goto_0

    .line 183
    :cond_d
    const-string v1, "21"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 184
    const-string/jumbo v0, "\u79d1\u6280"

    goto/16 :goto_0

    .line 185
    :cond_e
    const-string v1, "25"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 186
    const-string/jumbo v0, "\u6210\u957f"

    goto/16 :goto_0

    .line 187
    :cond_f
    const-string v1, "15"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 188
    const-string/jumbo v0, "\u4f53\u80b2"

    goto/16 :goto_0

    .line 189
    :cond_10
    const-string v1, "10"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 190
    const-string/jumbo v0, "\u6e38\u620f"

    goto/16 :goto_0

    .line 191
    :cond_11
    const-string v1, "88"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 192
    const-string/jumbo v0, "\u73a9\u8d27"

    goto/16 :goto_0

    .line 193
    :cond_12
    const-string v1, "10001"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 194
    const-string/jumbo v0, "\u6700\u5f3a\u5927\u8111"

    goto/16 :goto_0

    .line 196
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u672a\u77e5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getClannelIconId(Ljava/lang/String;)I
    .locals 2
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v1, "31"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const v0, 0x7f020146

    .line 148
    .local v0, "resourcesId":I
    :goto_0
    return v0

    .line 107
    .end local v0    # "resourcesId":I
    :cond_0
    const-string v1, "30"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const v0, 0x7f020121

    .restart local v0    # "resourcesId":I
    goto :goto_0

    .line 109
    .end local v0    # "resourcesId":I
    :cond_1
    const-string v1, "22"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    const v0, 0x7f020122

    .restart local v0    # "resourcesId":I
    goto :goto_0

    .line 111
    .end local v0    # "resourcesId":I
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    const v0, 0x7f020123

    .restart local v0    # "resourcesId":I
    goto :goto_0

    .line 113
    .end local v0    # "resourcesId":I
    :cond_3
    const-string v1, "14"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    const v0, 0x7f020142

    .restart local v0    # "resourcesId":I
    goto :goto_0

    .line 115
    .end local v0    # "resourcesId":I
    :cond_4
    const-string v1, "1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    const v0, 0x7f020145

    .restart local v0    # "resourcesId":I
    goto :goto_0

    .line 117
    .end local v0    # "resourcesId":I
    :cond_5
    const-string v1, "5"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    const v0, 0x7f020127

    .restart local v0    # "resourcesId":I
    goto :goto_0

    .line 119
    .end local v0    # "resourcesId":I
    :cond_6
    const-string v1, "32"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 120
    const v0, 0x7f02013c

    .restart local v0    # "resourcesId":I
    goto :goto_0

    .line 121
    .end local v0    # "resourcesId":I
    :cond_7
    const-string v1, "3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 122
    const v0, 0x7f020130

    .restart local v0    # "resourcesId":I
    goto :goto_0

    .line 123
    .end local v0    # "resourcesId":I
    :cond_8
    const-string v1, "422"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 124
    const v0, 0x7f02012d

    .restart local v0    # "resourcesId":I
    goto :goto_0

    .line 125
    .end local v0    # "resourcesId":I
    :cond_9
    const-string v1, "29"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 126
    const v0, 0x7f020134

    .restart local v0    # "resourcesId":I
    goto :goto_0

    .line 127
    .end local v0    # "resourcesId":I
    :cond_a
    const-string v1, "28"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 128
    const v0, 0x7f02012e

    .restart local v0    # "resourcesId":I
    goto/16 :goto_0

    .line 129
    .end local v0    # "resourcesId":I
    :cond_b
    const-string v1, "99"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 130
    const v0, 0x7f020144

    .restart local v0    # "resourcesId":I
    goto/16 :goto_0

    .line 131
    .end local v0    # "resourcesId":I
    :cond_c
    const-string v1, "26"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 132
    const v0, 0x7f020133

    .restart local v0    # "resourcesId":I
    goto/16 :goto_0

    .line 133
    .end local v0    # "resourcesId":I
    :cond_d
    const-string v1, "21"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 134
    const v0, 0x7f02012f

    .restart local v0    # "resourcesId":I
    goto/16 :goto_0

    .line 135
    .end local v0    # "resourcesId":I
    :cond_e
    const-string v1, "25"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 136
    const v0, 0x7f02011f

    .restart local v0    # "resourcesId":I
    goto/16 :goto_0

    .line 137
    .end local v0    # "resourcesId":I
    :cond_f
    const-string v1, "15"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 138
    const v0, 0x7f020140

    .restart local v0    # "resourcesId":I
    goto/16 :goto_0

    .line 139
    .end local v0    # "resourcesId":I
    :cond_10
    const-string v1, "10"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 140
    const v0, 0x7f020143

    .restart local v0    # "resourcesId":I
    goto/16 :goto_0

    .line 141
    .end local v0    # "resourcesId":I
    :cond_11
    const-string v1, "88"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 142
    const v0, 0x7f020141

    .restart local v0    # "resourcesId":I
    goto/16 :goto_0

    .line 143
    .end local v0    # "resourcesId":I
    :cond_12
    const-string v1, "10001"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 144
    const v0, 0x7f020147

    .restart local v0    # "resourcesId":I
    goto/16 :goto_0

    .line 146
    .end local v0    # "resourcesId":I
    :cond_13
    const v0, 0x7f020120

    .restart local v0    # "resourcesId":I
    goto/16 :goto_0
.end method

.method public static final declared-synchronized getInstance()Lcom/tudou/service/classify/Classify;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/tudou/service/classify/ClassifyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tudou/service/classify/ClassifyManager;->instance:Lcom/tudou/service/classify/ClassifyManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/tudou/service/classify/ClassifyManagerImpl;

    invoke-direct {v0}, Lcom/tudou/service/classify/ClassifyManagerImpl;-><init>()V

    sput-object v0, Lcom/tudou/service/classify/ClassifyManager;->instance:Lcom/tudou/service/classify/ClassifyManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/tudou/service/classify/ClassifyManager;->instance:Lcom/tudou/service/classify/ClassifyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getVipFilterTag()Lcom/youku/vo/SkipInfo;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/youku/vo/SkipInfo;

    invoke-direct {v0}, Lcom/youku/vo/SkipInfo;-><init>()V

    .line 47
    .local v0, "mSkipInfo":Lcom/youku/vo/SkipInfo;
    const-string v1, "5"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->first_tag_id:Ljava/lang/String;

    .line 48
    const-string v1, "0"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->image_state:Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "\u4f1a\u5458"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    .line 50
    const-string v1, "filter_tag"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 51
    const-string v1, "422"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    .line 52
    const-string v1, "quality"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->brief_sort_by:Ljava/lang/String;

    .line 53
    const-string v1, "1686"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->brief_filter:Ljava/lang/String;

    .line 54
    const-string v1, "3"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->tag_type:Ljava/lang/String;

    .line 55
    return-object v0
.end method

.method public static startVideo(Landroid/content/Context;Lcom/youku/vo/ChannelFilterVideo;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mVideoInfo"    # Lcom/youku/vo/ChannelFilterVideo;

    .prologue
    .line 33
    iget-object v1, p1, Lcom/youku/vo/ChannelFilterVideo;->iid:Ljava/lang/String;

    .line 35
    .local v1, "id":Ljava/lang/String;
    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    .line 37
    .local v2, "type":Lcom/tudou/android/Youku$Type;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget v0, p1, Lcom/youku/vo/ChannelFilterVideo;->aid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    .line 42
    :cond_0
    iget-object v3, p1, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
