.class public Lcn/domob/android/ads/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final c:Z


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/domob/android/ads/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/domob/android/ads/c/f;->b:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/c/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0, p2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0, p2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p2}, Lcn/domob/android/ads/c/f;->c(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p2}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0, p2}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;I)V

    .line 92
    return-void
.end method
