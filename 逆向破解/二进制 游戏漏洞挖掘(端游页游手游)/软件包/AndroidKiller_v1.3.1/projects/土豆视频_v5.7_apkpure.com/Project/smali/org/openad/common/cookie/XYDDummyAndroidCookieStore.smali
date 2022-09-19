.class public Lorg/openad/common/cookie/XYDDummyAndroidCookieStore;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/common/cookie/IXYDAndroidCookieStore;


# static fields
.field public static MOCK_COOKIE_STRING:Ljava/lang/String;


# instance fields
.field private cookieMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_uid=b000_5511089179943706094;expires=Dec, 21 Aug 2014 06:40:41 GMT;domain=.youku.com;path=/;"

    sput-object v0, Lorg/openad/common/cookie/XYDDummyAndroidCookieStore;->MOCK_COOKIE_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openad/common/cookie/XYDDummyAndroidCookieStore;->cookieMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/common/cookie/XYDDummyAndroidCookieStore;->cookieMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasCookies()Z
    .locals 1

    iget-object v0, p0, Lorg/openad/common/cookie/XYDDummyAndroidCookieStore;->cookieMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllCookie()V
    .locals 3

    iget-object v0, p0, Lorg/openad/common/cookie/XYDDummyAndroidCookieStore;->cookieMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/openad/common/cookie/XYDDummyAndroidCookieStore;->cookieMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 0

    invoke-virtual {p0}, Lorg/openad/common/cookie/XYDDummyAndroidCookieStore;->removeAllCookie()V

    return-void
.end method

.method public removeSessionCookie()V
    .locals 0

    invoke-virtual {p0}, Lorg/openad/common/cookie/XYDDummyAndroidCookieStore;->removeAllCookie()V

    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openad/common/cookie/XYDDummyAndroidCookieStore;->cookieMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
