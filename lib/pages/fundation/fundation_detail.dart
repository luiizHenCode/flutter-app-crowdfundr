import 'package:crowdfundr/widgets/tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class FundationDetailPage extends StatelessWidget {
  const FundationDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                bottom: 16.0,
              ),
              child: Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Container(
                      width: 56.0,
                      height: 56.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      child: const Icon(
                        TablerIcons.chevron_left,
                        size: 32.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Container(
                      width: 56.0,
                      height: 56.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      child: const Icon(
                        TablerIcons.bookmark,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 280.0,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            image: const DecorationImage(
                              image: AssetImage("assets/image_campaign.jpeg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: -20,
                                blurRadius: 30,
                                offset: const Offset(0, 25),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 16.0,
                          right: 16.0,
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            height: 36.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Text(
                              "16 days left",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.greenAccent.shade700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 36.0),
                    const Text(
                      "Robotics school for kids",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Row(
                      children: [
                        Text(
                          "Merit Academy",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Icon(
                          Icons.verified,
                          color: Color.fromARGB(255, 241, 201, 0),
                          size: 18.0,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        const Tag(label: "Education"),
                        const SizedBox(width: 8.0),
                        const Tag(label: "Kid"),
                        const Spacer(),
                        const Icon(
                          PhosphorIconsRegular.mapPin,
                          size: 20.0,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          "Ontario, Canada",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24.0,
                        bottom: 12.0,
                      ),
                      child: LinearProgressIndicator(
                        minHeight: 6.0,
                        value: 0.5,
                        borderRadius: BorderRadius.circular(3.0),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.greenAccent.shade700,
                        ),
                        backgroundColor: Colors.grey.shade200,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              text: 'Target ',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                    text: '\$10.000',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'Raised ',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 0, 174, 73),
                            ),
                            children: [
                              TextSpan(
                                text: '\$5.000 (50%)',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "About Campaign",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(vertical: 16.0),
                          child: const Text(
                            "Existem muitas variações das passagens do Lorem Ipsum disponíveis, mas a maior parte sofreu alterações de alguma forma, pela injecção de humor, ou de palavras aleatórias que nem sequer parecem suficientemente credíveis. Se vai usar uma passagem do Lorem Ipsum, deve ter a certeza que não contém nada de embaraçoso escondido no meio do texto. Todos os geradores de Lorem Ipsum na Internet acabam por repetir porções de texto pré-definido, como necessário, fazendo com que este seja o primeiro verdadeiro gerador na Internet. Usa um dicionário de 200 palavras em Latim, combinado com uma dúzia de modelos de frases, para gerar Lorem Ipsum que pareçam razoáveis. Desta forma, o Lorem Ipsum gerado é sempre livre de repetição, ou de injecção humorística, etc.",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity,
                height: 64.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.greenAccent.shade700,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Donate to campaign",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
