.class public Lcom/alibaba/sdk/android/security/impl/CertificateManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/security/CertificateService;


# static fields
.field public static final INSTANCE:Lcom/alibaba/sdk/android/security/impl/CertificateManager;

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private volatile d:[B

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/security/impl/CertificateManager;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/CertificateManager;

    const-class v0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-----BEGIN CERTIFICATE-----\nMIIFMjCCBBqgAwIBAgIQQUKC74+LfVtEUeMQXbwpUjANBgkqhkiG9w0BAQUFADCB\ntTELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQL\nExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTswOQYDVQQLEzJUZXJtcyBvZiB1c2Ug\nYXQgaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL3JwYSAoYykxMDEvMC0GA1UEAxMm\nVmVyaVNpZ24gQ2xhc3MgMyBTZWN1cmUgU2VydmVyIENBIC0gRzMwHhcNMTUwNDEz\nMDAwMDAwWhcNMTYwNjExMjM1OTU5WjCBgjELMAkGA1UEBhMCQ04xETAPBgNVBAgT\nCFpoZWppYW5nMREwDwYDVQQHFAhIYW5nemhvdTEoMCYGA1UEChQfVGFvYmFvKENo\naW5hKSBTb2Z0d2FyZSBDby4sIEx0ZDEMMAoGA1UECxQDUkRDMRUwEwYDVQQDFAwq\nLnRhb2Jhby5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDSu3i9\nyBzihy+IFEIlc3dIEM9CZKQGD6eehE6csRU1BC8fTdPk7jv4CMoTr9mA7kGQtiLP\neU+rsDRwmSb3wht/y+9f8UbE0EpzAmTwChC8M4wWctZ8+JwsXyWf8c1ZNtU6/Y9w\n+lUJjOHM2vSJq0pur7tTAbAorECJqCl0T/KxNSgL5Q0M0PXqawJY1GSKBWCf/Gow\n8SRGBJdHj18l6/xfGK9KwlJFPqVLjoRywiFXICxAkBHPmQFXmg4yQvvkqas47Uw9\nCb9RcVbp/+qaHP0OR4FGLsPPJLJUkaOXqgaEAPu0sg4+QBDVFbUCHsG7mrGQuKd3\ntFQh/rqN3pOXglDbAgMBAAGjggFtMIIBaTAjBgNVHREEHDAaggwqLnRhb2Jhby5j\nb22CCnRhb2Jhby5jb20wCQYDVR0TBAIwADAOBgNVHQ8BAf8EBAMCBaAwKwYDVR0f\nBCQwIjAgoB6gHIYaaHR0cDovL3NkLnN5bWNiLmNvbS9zZC5jcmwwYQYDVR0gBFow\nWDBWBgZngQwBAgIwTDAjBggrBgEFBQcCARYXaHR0cHM6Ly9kLnN5bWNiLmNvbS9j\ncHMwJQYIKwYBBQUHAgIwGQwXaHR0cHM6Ly9kLnN5bWNiLmNvbS9ycGEwHQYDVR0l\nBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMB8GA1UdIwQYMBaAFA1EXBZTRMGCfh0g\nqyX0AWPYvnmlMFcGCCsGAQUFBwEBBEswSTAfBggrBgEFBQcwAYYTaHR0cDovL3Nk\nLnN5bWNkLmNvbTAmBggrBgEFBQcwAoYaaHR0cDovL3NkLnN5bWNiLmNvbS9zZC5j\ncnQwDQYJKoZIhvcNAQEFBQADggEBAB0yazrmBTUnspwVSxiEPUjXC8xnSHgiFhhs\n1rgs2777wQuruVVKl8GSFvUWBwN4MrZR0ff4abG4ommeFKRCru5uGbhFq3omLRlf\nA8jZKTdTbXP0CJcbvfLtEaDPlPZxVNyi89y5KqOrppioEl4qS2ZFqY/n72dB3TKx\nN6UlSoshjA6+qvSgJrArf+T9Agjvm+u0ufzJUCoLf/Bn7PIT1o2scNxFUbxWR8SE\nAF7t4UogeKUIwd+NJOKoAma7SM0tqDToMZjG60Z3pTdoe+FnTjTPjWsB7X4qK+9v\nk0nBzvZTVaTUlozMJ/9EheActcKJyftOUWH/lCx24IW0iN0LOtc=\n-----END CERTIFICATE-----"

    iput-object v0, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->b:Ljava/lang/String;

    const-string v0, "CN=*.taobao.com"

    iput-object v0, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;
    .locals 2

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[,]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getPublicKey()[B
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->d:[B

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;

    const-string v1, "public_key"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->getByteArrayFromDynamicDataStore(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->d:[B

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->e:Landroid/content/Context;

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;

    const-string v1, "public_key"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->getByteArrayFromDynamicDataStore(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->refreshCer()V

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;

    const-string v1, "public_key"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->getByteArrayFromDynamicDataStore(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->d:[B

    return-void
.end method

.method public refreshCer()V
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "publicKeyInit"

    invoke-static {v0}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->startTimeRecord(Ljava/lang/String;)V

    :cond_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/sdk/android/ConfigManager;->INIT_SERVER_HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/cert.htm?certName=201506&version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/alibaba/sdk/android/ConfigManager;->SDK_INTERNAL_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/util/HttpHelper;->get(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->a(Ljava/io/InputStream;Ljava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    const-string v4, "com_taobao_tae_sdk_root_cer"

    invoke-static {v4}, Lcom/alibaba/sdk/android/util/ResourceUtils;->getRDrawable(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const/16 v0, 0xc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "drawable"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "com_taobao_tae_sdk_root_cer"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    sget-object v3, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;)V

    new-instance v3, Lcom/alibaba/sdk/android/AlibabaSDKException;

    invoke-direct {v3, v0}, Lcom/alibaba/sdk/android/AlibabaSDKException;-><init>(Lcom/alibaba/sdk/android/message/Message;)V

    throw v3
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    sget-boolean v3, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "publicKeyInit"

    sget-object v4, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->a:Ljava/lang/String;

    const-string v5, "publicKeyInit"

    invoke-static {v5}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "failure"

    aput-object v9, v5, v8

    invoke-static {v4, v6, v7, v5}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v3, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/alibaba/sdk/android/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/alibaba/sdk/android/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->b:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :cond_2
    :try_start_7
    iget-object v5, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->a(Ljava/io/InputStream;Ljava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->d:[B

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;

    const-string v3, "public_key"

    iget-object v4, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->d:[B

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->putValueInDynamicDataStore(Ljava/lang/String;[B)V

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;

    iget-object v3, p0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->d:[B

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->savePublicKey([B)V

    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "publicKeyInit"

    sget-object v3, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->a:Ljava/lang/String;

    const-string v4, "publicKeyInit"

    invoke-static {v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "success"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    invoke-static {v1}, Lcom/alibaba/sdk/android/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/alibaba/sdk/android/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method
