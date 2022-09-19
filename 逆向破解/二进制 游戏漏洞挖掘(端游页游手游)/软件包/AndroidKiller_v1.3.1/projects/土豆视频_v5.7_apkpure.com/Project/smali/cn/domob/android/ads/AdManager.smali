.class public Lcn/domob/android/ads/AdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/AdManager$ErrorCode;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO:Ljava/lang/String; = "audio"

.field public static final ACTION_CALL:Ljava/lang/String; = "call"

.field public static final ACTION_IN_APP:Ljava/lang/String; = "inapp"

.field public static final ACTION_LAUNCH_APP:Ljava/lang/String; = "la"

.field public static final ACTION_MAIL:Ljava/lang/String; = "mail"

.field public static final ACTION_MAP:Ljava/lang/String; = "map"

.field public static final ACTION_MARKET:Ljava/lang/String; = "market"

.field public static final ACTION_SMS:Ljava/lang/String; = "sms"

.field public static final ACTION_URL:Ljava/lang/String; = "url"

.field public static final ACTION_VIDEO:Ljava/lang/String; = "video"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "f"

.field public static final GENDER_MALE:Ljava/lang/String; = "m"

.field public static final SDK_VER:Ljava/lang/String; = "20141205"

.field public static final TEST_EMULATOR:Ljava/lang/String; = "emulator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static getBirthday()Ljava/util/GregorianCalendar;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGender()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    const-string v0, ""

    return-object v0
.end method

.method public static getPostalCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    const-string v0, ""

    return-object v0
.end method

.method public static getPublisherId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAllowUseOfLocation(Z)V
    .locals 0
    .param p0, "isAllowed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    return-void
.end method

.method public static setBirthday(III)V
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p0, v1, p2}, Ljava/util/GregorianCalendar;->set(III)V

    .line 163
    invoke-static {v0}, Lcn/domob/android/ads/AdManager;->setBirthday(Ljava/util/GregorianCalendar;)V

    .line 164
    return-void
.end method

.method public static setBirthday(Ljava/util/GregorianCalendar;)V
    .locals 0
    .param p0, "birthday"    # Ljava/util/GregorianCalendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    return-void
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/c;->a(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static setGender(Ljava/lang/String;)V
    .locals 0
    .param p0, "gender"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    return-void
.end method

.method public static setIsTestMode(Z)V
    .locals 0
    .param p0, "testMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p0, "pc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method public static setPublisherId(Ljava/lang/String;)V
    .locals 1
    .param p0, "_publisherID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/c;->b(Ljava/lang/String;)V

    .line 103
    return-void
.end method
