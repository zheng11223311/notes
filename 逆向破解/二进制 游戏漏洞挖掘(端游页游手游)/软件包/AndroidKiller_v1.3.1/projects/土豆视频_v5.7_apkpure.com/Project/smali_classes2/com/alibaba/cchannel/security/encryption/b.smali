.class public final Lcom/alibaba/cchannel/security/encryption/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/cchannel/security/encryption/b$a;
    }
.end annotation


# static fields
.field private static a:B

.field private static c:Lcom/alibaba/cchannel/security/encryption/b;


# instance fields
.field private b:Ljava/lang/String;

.field private volatile d:Lcom/alibaba/cchannel/security/encryption/c;

.field private volatile e:Lcom/alibaba/cchannel/security/encryption/SecurityServiceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput-byte v0, Lcom/alibaba/cchannel/security/encryption/b;->a:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/cchannel/security/encryption/b;
    .locals 2

    const-class v1, Lcom/alibaba/cchannel/security/encryption/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/cchannel/security/encryption/b;->c:Lcom/alibaba/cchannel/security/encryption/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/cchannel/security/encryption/b;

    invoke-direct {v0}, Lcom/alibaba/cchannel/security/encryption/b;-><init>()V

    sput-object v0, Lcom/alibaba/cchannel/security/encryption/b;->c:Lcom/alibaba/cchannel/security/encryption/b;

    :cond_0
    sget-object v0, Lcom/alibaba/cchannel/security/encryption/b;->c:Lcom/alibaba/cchannel/security/encryption/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alibaba/cchannel/security/encryption/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cchannel/security/encryption/b;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/alibaba/cchannel/security/encryption/SecurityServiceProvider;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cchannel/security/encryption/b;->e:Lcom/alibaba/cchannel/security/encryption/SecurityServiceProvider;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/cchannel/security/encryption/b;->d:Lcom/alibaba/cchannel/security/encryption/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/cchannel/security/encryption/b$a;

    invoke-direct {v0, p0}, Lcom/alibaba/cchannel/security/encryption/b$a;-><init>(Lcom/alibaba/cchannel/security/encryption/b;)V

    iput-object v0, p0, Lcom/alibaba/cchannel/security/encryption/b;->d:Lcom/alibaba/cchannel/security/encryption/c;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/cchannel/security/encryption/b;->d:Lcom/alibaba/cchannel/security/encryption/c;

    invoke-interface {v0}, Lcom/alibaba/cchannel/security/encryption/c;->a()Lcom/alibaba/cchannel/security/encryption/SecurityServiceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/cchannel/security/encryption/b;->e:Lcom/alibaba/cchannel/security/encryption/SecurityServiceProvider;

    :cond_1
    iget-object v0, p0, Lcom/alibaba/cchannel/security/encryption/b;->e:Lcom/alibaba/cchannel/security/encryption/SecurityServiceProvider;

    return-object v0
.end method
