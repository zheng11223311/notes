.class public Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;
.super Ljava/lang/Object;
.source "RegularExpressionUtil.java"


# static fields
.field static facePatten:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "f0[0-9]{2}|f10[0-7]"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->facePatten:Ljava/util/regex/Pattern;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dealExpression(Landroid/text/SpannableString;Ljava/util/regex/Pattern;I)V
    .locals 9
    .param p0, "spannableString"    # Landroid/text/SpannableString;
    .param p1, "patten"    # Ljava/util/regex/Pattern;
    .param p2, "start"    # I

    .prologue
    .line 29
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    .line 30
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 31
    .local v5, "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 32
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    if-lt v7, p2, :cond_0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v7

    const-string v8, "drawable"

    invoke-static {v7, v8, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 40
    .local v6, "resId":I
    if-eqz v6, :cond_0

    .line 41
    new-instance v3, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$1;

    const/4 v7, 0x0

    invoke-direct {v3, v7, v0, v6}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$1;-><init>(ILandroid/content/Context;I)V

    .line 50
    .local v3, "imageSpan":Landroid/text/style/DynamicDrawableSpan;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int v2, v7, v8

    .line 51
    .local v2, "end":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    const/16 v8, 0x11

    invoke-virtual {p0, v3, v7, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 52
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 53
    invoke-static {p0, p1, v2}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealExpression(Landroid/text/SpannableString;Ljava/util/regex/Pattern;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "end":I
    .end local v3    # "imageSpan":Landroid/text/style/DynamicDrawableSpan;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "resId":I
    :cond_1
    return-void

    .line 57
    .restart local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static dealExpression(Landroid/text/SpannableString;Ljava/util/regex/Pattern;ILjava/lang/String;)V
    .locals 6
    .param p0, "spannableString"    # Landroid/text/SpannableString;
    .param p1, "patten"    # Ljava/util/regex/Pattern;
    .param p2, "start"    # I
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 65
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-lt v4, p2, :cond_0

    .line 70
    new-instance v1, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$2;

    const/4 v4, 0x0

    invoke-direct {v1, v4, p3}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$2;-><init>(ILjava/lang/String;)V

    .line 83
    .local v1, "imageSpan":Landroid/text/style/DynamicDrawableSpan;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v4, v5

    .line 84
    .local v0, "end":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {p0, v1, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 85
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 86
    invoke-static {p0, p1, v0}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealExpression(Landroid/text/SpannableString;Ljava/util/regex/Pattern;I)V

    .line 90
    .end local v0    # "end":I
    .end local v1    # "imageSpan":Landroid/text/style/DynamicDrawableSpan;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static dealStringExpression1(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "patten"    # Ljava/util/regex/Pattern;

    .prologue
    .line 151
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 152
    .local v1, "matcher":Ljava/util/regex/Matcher;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 154
    .local v2, "result":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-ltz v4, :cond_0

    .line 159
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->getExpressionByResName(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->getRealName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 160
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 161
    goto :goto_0

    .line 162
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static dealStringExpression2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "patten"    # Ljava/util/regex/Pattern;

    .prologue
    .line 167
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 168
    .local v1, "matcher":Ljava/util/regex/Matcher;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 170
    .local v2, "result":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-ltz v4, :cond_0

    .line 175
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->getExpressionByRealName(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->getResName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 176
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 177
    goto :goto_0

    .line 178
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getExpressionString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "regular"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    .local v2, "spannableString":Landroid/text/SpannableString;
    const/4 v3, 0x2

    invoke-static {p1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 96
    .local v1, "sinaPatten":Ljava/util/regex/Pattern;
    if-nez p2, :cond_1

    .line 97
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v1, v3}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealExpression(Landroid/text/SpannableString;Ljava/util/regex/Pattern;I)V

    .line 104
    :cond_0
    :goto_0
    return-object v2

    .line 99
    :cond_1
    const/4 v3, 0x0

    invoke-static {v2, v1, v3, p2}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealExpression(Landroid/text/SpannableString;Ljava/util/regex/Pattern;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getExpressionString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "regular"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 108
    const/4 v3, 0x2

    invoke-static {p1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 109
    .local v2, "sinaPatten":Ljava/util/regex/Pattern;
    const-string v1, ""

    .line 111
    .local v1, "result":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 112
    :try_start_0
    invoke-static {p0, v2}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealStringExpression1(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_0
    :goto_0
    return-object v1

    .line 114
    :cond_1
    invoke-static {p0, v2}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealStringExpression2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFaceExpressionString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .local v1, "spannableString":Landroid/text/SpannableString;
    if-nez p1, :cond_1

    .line 126
    :try_start_0
    sget-object v2, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->facePatten:Ljava/util/regex/Pattern;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealExpression(Landroid/text/SpannableString;Ljava/util/regex/Pattern;I)V

    .line 133
    :cond_0
    :goto_0
    return-object v1

    .line 128
    :cond_1
    sget-object v2, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->facePatten:Ljava/util/regex/Pattern;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealExpression(Landroid/text/SpannableString;Ljava/util/regex/Pattern;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFaceExpressionString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 137
    const-string v1, ""

    .line 139
    .local v1, "result":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 140
    :try_start_0
    sget-object v2, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->facePatten:Ljava/util/regex/Pattern;

    invoke-static {p0, v2}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealStringExpression1(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 147
    :cond_0
    :goto_0
    return-object v1

    .line 142
    :cond_1
    sget-object v2, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->facePatten:Ljava/util/regex/Pattern;

    invoke-static {p0, v2}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealStringExpression2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
