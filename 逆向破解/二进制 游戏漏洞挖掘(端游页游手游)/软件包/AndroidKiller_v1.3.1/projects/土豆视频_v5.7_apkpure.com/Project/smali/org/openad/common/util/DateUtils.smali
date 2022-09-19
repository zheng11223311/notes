.class public Lorg/openad/common/util/DateUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static betweenDays(Ljava/util/Date;Ljava/util/Date;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int v1, v0, v1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
