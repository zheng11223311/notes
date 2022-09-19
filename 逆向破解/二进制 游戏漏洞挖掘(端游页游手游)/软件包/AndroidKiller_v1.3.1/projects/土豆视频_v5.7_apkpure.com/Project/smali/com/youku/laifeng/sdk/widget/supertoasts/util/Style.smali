.class public Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;
.super Ljava/lang/Object;
.source "Style.java"


# static fields
.field public static final BLACK:I = 0x0

.field public static final BLUE:I = 0x1

.field public static final GRAY:I = 0x2

.field public static final GREEN:I = 0x3

.field public static final ORANGE:I = 0x4

.field public static final PURPLE:I = 0x5

.field public static final RED:I = 0x6

.field public static final WHITE:I = 0x7


# instance fields
.field public animations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

.field public background:I

.field public buttonTextColor:I

.field public dividerColor:I

.field public textColor:I

.field public typefaceStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->animations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 44
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->typefaceStyle:I

    .line 46
    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 47
    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    .line 48
    const v0, -0x333334

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->buttonTextColor:I

    return-void
.end method

.method public static getBackground(I)I
    .locals 3
    .param p0, "style"    # I

    .prologue
    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 220
    packed-switch p0, :pswitch_data_0

    .line 255
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_gray"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 297
    :goto_0
    return v0

    .line 223
    :pswitch_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_black"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_white"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 231
    :pswitch_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_gray"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 235
    :pswitch_3
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_purple"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 239
    :pswitch_4
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_red"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 243
    :pswitch_5
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_orange"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 247
    :pswitch_6
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_blue"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 251
    :pswitch_7
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_green"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 261
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 297
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_gray"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 265
    :pswitch_8
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_black"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 269
    :pswitch_9
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_white"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 273
    :pswitch_a
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_gray"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 277
    :pswitch_b
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_purple"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 281
    :pswitch_c
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_red"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 285
    :pswitch_d
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_orange"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 289
    :pswitch_e
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_blue"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 293
    :pswitch_f
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_green"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 261
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_e
        :pswitch_a
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public static getStyle(I)Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;
    .locals 5
    .param p0, "styleType"    # I

    .prologue
    const/4 v1, 0x2

    const v4, -0x777778

    const v3, -0xbbbbbc

    const/4 v2, -0x1

    .line 59
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;-><init>()V

    .line 61
    .local v0, "style":Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;
    packed-switch p0, :pswitch_data_0

    .line 123
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 124
    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 125
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    .line 126
    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 66
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 67
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 72
    :pswitch_1
    iput v3, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 73
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 74
    iput v3, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    .line 75
    iput v4, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->buttonTextColor:I

    goto :goto_0

    .line 80
    :pswitch_2
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 81
    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 82
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    .line 83
    iput v4, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->buttonTextColor:I

    goto :goto_0

    .line 88
    :pswitch_3
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 89
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 90
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 95
    :pswitch_4
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 96
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 97
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 102
    :pswitch_5
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 103
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 104
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 109
    :pswitch_6
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 110
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 111
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 116
    :pswitch_7
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 117
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 118
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static getStyle(ILcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;
    .locals 5
    .param p0, "styleType"    # I
    .param p1, "animations"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .prologue
    const/4 v1, 0x2

    const v4, -0x777778

    const v3, -0xbbbbbc

    const/4 v2, -0x1

    .line 142
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;-><init>()V

    .line 143
    .local v0, "style":Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;
    iput-object p1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->animations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 145
    packed-switch p0, :pswitch_data_0

    .line 207
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 208
    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 209
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    .line 210
    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 150
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 151
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 156
    :pswitch_1
    iput v3, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 157
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 158
    iput v3, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    .line 159
    iput v4, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->buttonTextColor:I

    goto :goto_0

    .line 164
    :pswitch_2
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 165
    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 166
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    .line 167
    iput v4, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->buttonTextColor:I

    goto :goto_0

    .line 172
    :pswitch_3
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 173
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 174
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 179
    :pswitch_4
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 180
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 181
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 186
    :pswitch_5
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 187
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 188
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 193
    :pswitch_6
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 194
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 195
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 200
    :pswitch_7
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    .line 201
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    .line 202
    iput v2, v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
