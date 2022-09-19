.class public Lio/rong/imkit/util/RongDateUtils;
.super Ljava/lang/Object;
.source "RongDateUtils.java"


# static fields
.field private static final OTHER:I = 0x7de

.field private static final TODAY:I = 0x6

.field private static final YESTERDAY:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fromat"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getConversationFormatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const-string v1, ""

    .line 102
    :goto_0
    return-object v1

    .line 80
    :cond_0
    const/4 v1, 0x0

    .line 82
    .local v1, "fromatedDate":Ljava/lang/String;
    invoke-static {p0}, Lio/rong/imkit/util/RongDateUtils;->judgeDate(Ljava/util/Date;)I

    move-result v2

    .line 84
    .local v2, "type":I
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 86
    :sswitch_0
    const-string v3, "HH:mm"

    invoke-static {p0, v3}, Lio/rong/imkit/util/RongDateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    goto :goto_0

    .line 90
    :sswitch_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_yesterday_format:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "formatString":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "HH:mm"

    invoke-static {p0, v5}, Lio/rong/imkit/util/RongDateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    goto :goto_0

    .line 95
    .end local v0    # "formatString":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v3, "yyyy-MM-dd HH:mm"

    invoke-static {p0, v3}, Lio/rong/imkit/util/RongDateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xf -> :sswitch_1
        0x7de -> :sswitch_2
    .end sparse-switch
.end method

.method public static getConversationListFormatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const-string v0, ""

    .line 71
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 52
    .local v0, "formatDate":Ljava/lang/String;
    invoke-static {p0}, Lio/rong/imkit/util/RongDateUtils;->judgeDate(Ljava/util/Date;)I

    move-result v2

    .line 54
    .local v2, "type":I
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 56
    :sswitch_0
    const-string v3, "HH:mm"

    invoke-static {p0, v3}, Lio/rong/imkit/util/RongDateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    goto :goto_0

    .line 60
    :sswitch_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_yesterday_format:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "formatString":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "HH:mm"

    invoke-static {p0, v5}, Lio/rong/imkit/util/RongDateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    goto :goto_0

    .line 64
    .end local v1    # "formatString":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-static {p0, v3}, Lio/rong/imkit/util/RongDateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    goto :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xf -> :sswitch_1
        0x7de -> :sswitch_2
    .end sparse-switch
.end method

.method public static isShowChatTime(JJ)Z
    .locals 8
    .param p0, "currentTime"    # J
    .param p2, "preTime"    # J

    .prologue
    const/4 v2, 0x1

    .line 114
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lio/rong/imkit/util/RongDateUtils;->judgeDate(Ljava/util/Date;)I

    move-result v0

    .line 115
    .local v0, "typeCurrent":I
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lio/rong/imkit/util/RongDateUtils;->judgeDate(Ljava/util/Date;)I

    move-result v1

    .line 117
    .local v1, "typePre":I
    if-ne v0, v1, :cond_0

    .line 119
    sub-long v4, p0, p2

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v2

    .line 122
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static judgeDate(Ljava/util/Date;)I
    .locals 9
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/4 v5, 0x0

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 19
    .local v1, "calendarToday":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 20
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 21
    invoke-virtual {v1, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 22
    invoke-virtual {v1, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 25
    .local v2, "calendarYesterday":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 26
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 27
    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 28
    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 29
    invoke-virtual {v2, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 33
    .local v0, "calendarTarget":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    const/16 v3, 0x7de

    .line 40
    :goto_0
    return v3

    .line 37
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    const/16 v3, 0xf

    goto :goto_0

    .line 40
    :cond_1
    const/4 v3, 0x6

    goto :goto_0
.end method
