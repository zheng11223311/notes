.class public final Lcom/intertrust/wasabi/drm/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# instance fields
.field private day:I

.field private hours:I

.field private milliseconds:I

.field private minutes:I

.field private month:I

.field private seconds:I

.field private year:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method constructor <init>(IIIIIII)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/intertrust/wasabi/drm/DateTime;->year:I

    .line 40
    iput p2, p0, Lcom/intertrust/wasabi/drm/DateTime;->month:I

    .line 41
    iput p3, p0, Lcom/intertrust/wasabi/drm/DateTime;->day:I

    .line 42
    iput p4, p0, Lcom/intertrust/wasabi/drm/DateTime;->hours:I

    .line 43
    iput p5, p0, Lcom/intertrust/wasabi/drm/DateTime;->minutes:I

    .line 44
    iput p6, p0, Lcom/intertrust/wasabi/drm/DateTime;->seconds:I

    .line 45
    iput p7, p0, Lcom/intertrust/wasabi/drm/DateTime;->milliseconds:I

    .line 46
    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/intertrust/wasabi/drm/DateTime;->day:I

    return v0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/intertrust/wasabi/drm/DateTime;->hours:I

    return v0
.end method

.method public getMilliseconds()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/intertrust/wasabi/drm/DateTime;->milliseconds:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/intertrust/wasabi/drm/DateTime;->minutes:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/intertrust/wasabi/drm/DateTime;->month:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/intertrust/wasabi/drm/DateTime;->seconds:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/intertrust/wasabi/drm/DateTime;->year:I

    return v0
.end method

.method public toCalendar()Ljava/util/Calendar;
    .locals 7

    .prologue
    .line 53
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 57
    iget v1, p0, Lcom/intertrust/wasabi/drm/DateTime;->year:I

    iget v2, p0, Lcom/intertrust/wasabi/drm/DateTime;->month:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/intertrust/wasabi/drm/DateTime;->day:I

    iget v4, p0, Lcom/intertrust/wasabi/drm/DateTime;->hours:I

    iget v5, p0, Lcom/intertrust/wasabi/drm/DateTime;->minutes:I

    iget v6, p0, Lcom/intertrust/wasabi/drm/DateTime;->seconds:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 58
    const/16 v1, 0xe

    iget v2, p0, Lcom/intertrust/wasabi/drm/DateTime;->milliseconds:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 59
    return-object v0
.end method
